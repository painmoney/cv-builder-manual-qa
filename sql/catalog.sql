-- Дополнительный read-only каталог схемы, RLS и RPC проверенной версии.
SELECT jsonb_build_object(
    'columns',(
        SELECT jsonb_agg(jsonb_build_object('table',table_name,'column',column_name,'type',data_type) ORDER BY table_name,ordinal_position)
        FROM information_schema.columns
        WHERE table_schema='public' AND table_name IN ('skills','manual_projects','education','experience')),
    'rls',(
        SELECT jsonb_agg(jsonb_build_object('table',c.relname,'enabled',c.relrowsecurity))
        FROM pg_class c
        JOIN pg_namespace n ON n.oid=c.relnamespace
        WHERE n.nspname='public' AND c.relkind='r'),
    'avatar',(
        SELECT jsonb_agg(jsonb_build_object('column',column_name,'nullable',is_nullable,'default',column_default))
        FROM information_schema.columns
        WHERE table_schema='public' AND table_name='profiles' AND column_name='avatar_shape'),
    'constraints',(
        SELECT jsonb_agg(jsonb_build_object('table',c.conrelid::regclass::text,'name',c.conname,'type',c.contype,'definition',pg_get_constraintdef(c.oid)))
        FROM pg_constraint c
        JOIN pg_namespace n ON n.oid=c.connamespace
        WHERE n.nspname='public'),
    'rpc',(
        SELECT jsonb_agg(jsonb_build_object('name',p.proname,'securityDefiner',p.prosecdef,'settings',p.proconfig))
        FROM pg_proc p
        JOIN pg_namespace n ON n.oid=p.pronamespace
        WHERE n.nspname='public' AND p.proname IN ('create_resume_full','save_resume_full'))) AS catalog;
