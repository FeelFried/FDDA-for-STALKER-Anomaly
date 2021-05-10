function normal		(shader, t_base, t_second, t_detail)
	shader:begin	("deffer_model_flat","deffer_base_flat")
			: fog		(true)
			: emissive 	(true)
--	shader:sampler	("s_base")      :texture	(t_base)
	shader:dx10texture	("s_base",	t_base)
	shader:dx10sampler	("smp_base")
	shader:dx10stencil	( 	true, cmp_func.always, 
							255 , 255, 255,
							stencil_op.keep, stencil_op.replace, stencil_op.keep)
	shader:dx10stencil_ref	(1)
	shader: dx10color_write_enable( true, true, true, false)
end

function l_special	(shader, t_base, t_second, t_detail)
	shader:begin	("deffer_model_flat","deffer_base_flat")
			: fog		(true)
			: emissive 	(true)
--	shader:sampler	("s_base")      :texture	(t_base)
	shader:dx10texture	("s_base",	t_base)
	shader:dx10sampler	("smp_base")
	shader:dx10stencil	( 	true, cmp_func.always, 
							255 , 255, 255, 
							stencil_op.keep, stencil_op.replace, stencil_op.keep)
	shader:dx10stencil_ref	(1)
	shader: dx10color_write_enable( true, true, true, false)
end
