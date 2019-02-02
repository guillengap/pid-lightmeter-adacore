pragma Warnings (Off);
pragma Ada_95;
with System;
package ada_main is


   GNAT_Version : constant String :=
                    "GNAT Version: GPL 2017 (20170515-63)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_pid_light_control" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   procedure main;
   pragma Export (C, main, "main");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  gnat%s
   --  interfaces%s
   --  system%s
   --  ada.io_exceptions%s
   --  interfaces.stm32%s
   --  interfaces.stm32.pwr%s
   --  system.bb%s
   --  system.bb.board_parameters%s
   --  system.bb.mcu_parameters%s
   --  system.bb.mcu_parameters%b
   --  system.case_util%s
   --  system.case_util%b
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.machine_code%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.semihosting%s
   --  system.semihosting%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.task_info%s
   --  system.task_info%b
   --  system.text_io%s
   --  system.text_io%b
   --  system.io%s
   --  system.io%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  interfaces.stm32.rcc%s
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.stm32%s
   --  system.bb.parameters%s
   --  system.stm32%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.secondary_stack%s
   --  system.secondary_stack%b
   --  gnat.debug_utilities%s
   --  gnat.debug_utilities%b
   --  system.address_image%s
   --  system.address_image%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.multiprocessors%s
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  ada.exceptions%s
   --  system.val_util%s
   --  system.val_uns%s
   --  ada.tags%s
   --  system.bb.time%s
   --  system.bb.interrupts%s
   --  system.bb.protection%s
   --  system.bb.cpu_primitives%s
   --  system.bb.board_support%s
   --  system.multiprocessors%b
   --  system.multiprocessors.spin_locks%s
   --  system.multiprocessors.spin_locks%b
   --  system.soft_links%s
   --  system.exception_table%s
   --  system.exception_table%b
   --  system.bb.board_support%b
   --  ada.exceptions.last_chance_handler%s
   --  system.wch_stw%s
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  ada.exceptions.traceback%s
   --  ada.exceptions.traceback%b
   --  system.memory%s
   --  system.memory%b
   --  system.val_util%b
   --  system.val_uns%b
   --  ada.tags%b
   --  system.bb.timing_events%s
   --  system.bb.cpu_primitives.multiprocessors%s
   --  system.multiprocessors.fair_locks%s
   --  system.bb.threads%s
   --  system.bb.threads.queues%s
   --  system.bb.threads.queues%b
   --  system.bb.protection%b
   --  system.bb.threads%b
   --  system.bb.cpu_primitives%b
   --  system.wch_stw%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  system.standard_library%b
   --  ada.exceptions%b
   --  system.bb.cpu_primitives.multiprocessors%b
   --  system.os_interface%s
   --  system.multiprocessors.fair_locks%b
   --  system.bb.time%b
   --  system.bb.interrupts%b
   --  system.bb.timing_events%b
   --  ada.exceptions.last_chance_handler%b
   --  system.task_primitives%s
   --  system.tasking%s
   --  system.tasking.debug%s
   --  system.tasking.debug%b
   --  system.task_primitives.operations%s
   --  system.tasking%b
   --  system.soft_links%b
   --  system.task_primitives.operations%b
   --  ada.streams%s
   --  ada.streams%b
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.finalization_masters%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  ada.real_time.delays%s
   --  ada.real_time.delays%b
   --  system.assertions%s
   --  system.assertions%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.protected_objects.multiprocessors%s
   --  system.tasking.protected_objects.multiprocessors%b
   --  system.tasking.protected_objects.single_entry%s
   --  system.tasking.protected_objects.single_entry%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  system.tasking.restricted%s
   --  system.tasking.restricted.stages%s
   --  system.tasking.restricted.stages%b
   --  ada.task_identification%s
   --  ada.task_identification%b
   --  system.interrupts%s
   --  system.interrupts%b
   --  ada.interrupts%s
   --  ada.interrupts%b
   --  ada.interrupts.names%s
   --  cortex_m%s
   --  cortex_m_svd%s
   --  hal%s
   --  cortex_m_svd.scb%s
   --  stm32%s
   --  stm32_svd%s
   --  stm32_svd.adc%s
   --  stm32_svd.crc%s
   --  stm32_svd.dac%s
   --  stm32_svd.dma%s
   --  stm32_svd.exti%s
   --  stm32_svd.gpio%s
   --  stm32_svd.i2c%s
   --  stm32_svd.pwr%s
   --  stm32_svd.rcc%s
   --  stm32_svd.rtc%s
   --  stm32_svd.sdio%s
   --  sdmmc_svd%s
   --  stm32_svd.spi%s
   --  stm32_svd.syscfg%s
   --  stm32_svd.usart%s
   --  adl_config%s
   --  cortex_m.cache%s
   --  cortex_m.cache%b
   --  hal.audio%s
   --  hal.block_drivers%s
   --  hal.gpio%s
   --  hal.i2c%s
   --  hal.real_time_clock%s
   --  hal.sdmmc%s
   --  hal.sdmmc%b
   --  hal.spi%s
   --  hal.time%s
   --  cs43l22%s
   --  cs43l22%b
   --  hal.uart%s
   --  lis3dsh%s
   --  lis3dsh%b
   --  lis3dsh.spi%s
   --  lis3dsh.spi%b
   --  ravenscar_time%s
   --  ravenscar_time%b
   --  sdmmc_init%s
   --  sdmmc_init%b
   --  sdmmc_svd_periph%s
   --  stm32.adc%s
   --  stm32.adc%b
   --  stm32.crc%s
   --  stm32.crc%b
   --  stm32.dac%s
   --  stm32.dac%b
   --  stm32.dma%s
   --  stm32.dma%b
   --  stm32.dma.interrupts%s
   --  stm32.dma.interrupts%b
   --  stm32.exti%s
   --  stm32.exti%b
   --  stm32.power_control%s
   --  stm32.power_control%b
   --  stm32.rtc%s
   --  stm32.rtc%b
   --  stm32.spi%s
   --  stm32.spi%b
   --  stm32.spi.dma%s
   --  stm32.spi.dma%b
   --  stm32.timers%s
   --  stm32.timers%b
   --  stm32.i2c%s
   --  stm32.usarts%s
   --  stm32.sdmmc_interrupt%s
   --  stm32.i2s%s
   --  stm32.i2c.dma%s
   --  stm32.gpio%s
   --  stm32.rcc%s
   --  stm32.sdmmc%s
   --  stm32.sdmmc_interrupt%b
   --  stm32.syscfg%s
   --  stm32.gpio%b
   --  stm32.device%s
   --  stm32.device%b
   --  stm32.sdmmc%b
   --  stm32.i2s%b
   --  stm32.i2c.dma%b
   --  stm32.i2c%b
   --  stm32.syscfg%b
   --  stm32.rcc%b
   --  stm32.usarts%b
   --  stm32.pwm%s
   --  stm32.pwm%b
   --  stm32.setup%s
   --  stm32.setup%b
   --  stm32.board%s
   --  stm32.board%b
   --  last_chance_handler%s
   --  last_chance_handler%b
   --  pid_light_control%b
   --  END ELABORATION ORDER

end ada_main;
