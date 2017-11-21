CREATE TABLE public.step
(
  name character varying NOT NULL,
  point geometry,
  CONSTRAINT step_pkey PRIMARY KEY (name)
)
INSERT INTO public.step(
            name, point)
    VALUES ('BOA', ST_MakePoint(-118.291149,34.025099));
    INSERT INTO public.step(
            name, point)
    VALUES ('PDH', ST_MakePoint(-118.291159,34.018966));    
INSERT INTO public.step(
            name, point)
    VALUES ('GTL', ST_MakePoint(-118.282502,34.018608));
INSERT INTO public.step(
            name, point)
    VALUES ('FelixChevrolet', ST_MakePoint(-118.280250,34.021869));
INSERT INTO public.step(
            name, point)
    VALUES ('SGM', ST_MakePoint(-118.289162,34.021240));
INSERT INTO public.step(
            name, point)
    VALUES ('Student Union', ST_MakePoint(-118.285787,34.020238));
INSERT INTO public.step(
            name, point)
    VALUES ('LVL' ,ST_MakePoint(-118.282788,34.021782));
INSERT INTO public.step(
            name, point)
    VALUES ('Lyon Center', ST_MakePoint(-118.288386,34.024373));
INSERT INTO public.step(
            name, point)
    VALUES ('PM Fountain', ST_MakePoint(-118.284523,34.020505));

                
