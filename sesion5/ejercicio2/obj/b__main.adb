pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E068 : Short_Integer; pragma Import (Ada, E068, "system__os_lib_E");
   E011 : Short_Integer; pragma Import (Ada, E011, "system__soft_links_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "system__exception_table_E");
   E064 : Short_Integer; pragma Import (Ada, E064, "ada__io_exceptions_E");
   E048 : Short_Integer; pragma Import (Ada, E048, "ada__strings_E");
   E036 : Short_Integer; pragma Import (Ada, E036, "ada__containers_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__exceptions_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__secondary_stack_E");
   E074 : Short_Integer; pragma Import (Ada, E074, "interfaces__c_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "ada__strings__maps_E");
   E054 : Short_Integer; pragma Import (Ada, E054, "ada__strings__maps__constants_E");
   E076 : Short_Integer; pragma Import (Ada, E076, "system__object_reader_E");
   E043 : Short_Integer; pragma Import (Ada, E043, "system__dwarf_lines_E");
   E035 : Short_Integer; pragma Import (Ada, E035, "system__traceback__symbolic_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "interfaces__c__strings_E");
   E116 : Short_Integer; pragma Import (Ada, E116, "system__task_info_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "ada__tags_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "ada__streams_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "system__file_control_block_E");
   E147 : Short_Integer; pragma Import (Ada, E147, "system__finalization_root_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "ada__finalization_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "system__file_io_E");
   E185 : Short_Integer; pragma Import (Ada, E185, "system__storage_pools_E");
   E181 : Short_Integer; pragma Import (Ada, E181, "system__finalization_masters_E");
   E189 : Short_Integer; pragma Import (Ada, E189, "system__storage_pools__subpools_E");
   E170 : Short_Integer; pragma Import (Ada, E170, "ada__calendar_E");
   E168 : Short_Integer; pragma Import (Ada, E168, "ada__calendar__delays_E");
   E095 : Short_Integer; pragma Import (Ada, E095, "ada__real_time_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "ada__text_io_E");
   E199 : Short_Integer; pragma Import (Ada, E199, "system__tasking__initialization_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "system__tasking__protected_objects_E");
   E211 : Short_Integer; pragma Import (Ada, E211, "system__tasking__protected_objects__entries_E");
   E207 : Short_Integer; pragma Import (Ada, E207, "system__tasking__queuing_E");
   E195 : Short_Integer; pragma Import (Ada, E195, "system__tasking__stages_E");
   E174 : Short_Integer; pragma Import (Ada, E174, "ada__real_time__timing_events_E");
   E166 : Short_Integer; pragma Import (Ada, E166, "monitor_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E166 := E166 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "monitor__finalize_spec");
      begin
         F1;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "ada__real_time__timing_events__finalize_body");
      begin
         E174 := E174 - 1;
         F2;
      end;
      declare
         procedure F3;
         pragma Import (Ada, F3, "ada__real_time__timing_events__finalize_spec");
      begin
         F3;
      end;
      E211 := E211 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F4;
      end;
      E138 := E138 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "ada__text_io__finalize_spec");
      begin
         F5;
      end;
      E189 := E189 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__storage_pools__subpools__finalize_spec");
      begin
         F6;
      end;
      E181 := E181 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__finalization_masters__finalize_spec");
      begin
         F7;
      end;
      declare
         procedure F8;
         pragma Import (Ada, F8, "system__file_io__finalize_body");
      begin
         E144 := E144 - 1;
         F8;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, True, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (False, False, False, True, True, False, False, False, 
           False, False, True, True, True, True, False, False, 
           False, False, False, True, True, False, True, True, 
           False, True, True, True, True, False, False, False, 
           False, False, True, False, True, True, False, True, 
           False, True, True, False, True, False, True, False, 
           False, False, True, False, True, False, False, False, 
           True, False, True, False, True, True, True, False, 
           False, True, False, True, True, True, False, True, 
           True, False, True, True, True, True, False, False, 
           True, False, False, False, False, False, False, True, 
           False, True, False),
         Count => (0, 0, 0, 0, 0, 0, 2, 0, 1, 0),
         Unknown => (False, False, False, False, False, False, True, False, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E021 := E021 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E064 := E064 + 1;
      Ada.Strings'Elab_Spec;
      E048 := E048 + 1;
      Ada.Containers'Elab_Spec;
      E036 := E036 + 1;
      System.Exceptions'Elab_Spec;
      E023 := E023 + 1;
      System.Soft_Links'Elab_Body;
      E011 := E011 + 1;
      Interfaces.C'Elab_Spec;
      System.Os_Lib'Elab_Body;
      E068 := E068 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E054 := E054 + 1;
      System.Secondary_Stack'Elab_Body;
      E015 := E015 + 1;
      System.Object_Reader'Elab_Spec;
      System.Dwarf_Lines'Elab_Spec;
      E043 := E043 + 1;
      E074 := E074 + 1;
      E050 := E050 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E035 := E035 + 1;
      E076 := E076 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E101 := E101 + 1;
      System.Task_Info'Elab_Spec;
      E116 := E116 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E130 := E130 + 1;
      Ada.Streams'Elab_Spec;
      E140 := E140 + 1;
      System.File_Control_Block'Elab_Spec;
      E148 := E148 + 1;
      System.Finalization_Root'Elab_Spec;
      E147 := E147 + 1;
      Ada.Finalization'Elab_Spec;
      E145 := E145 + 1;
      System.File_Io'Elab_Body;
      E144 := E144 + 1;
      System.Storage_Pools'Elab_Spec;
      E185 := E185 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E181 := E181 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E189 := E189 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E170 := E170 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E168 := E168 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E095 := E095 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E138 := E138 + 1;
      System.Tasking.Initialization'Elab_Body;
      E199 := E199 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E209 := E209 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E211 := E211 + 1;
      System.Tasking.Queuing'Elab_Body;
      E207 := E207 + 1;
      System.Tasking.Stages'Elab_Body;
      E195 := E195 + 1;
      Ada.Real_Time.Timing_Events'Elab_Spec;
      Ada.Real_Time.Timing_Events'Elab_Body;
      E174 := E174 + 1;
      Monitor'Elab_Spec;
      E166 := E166 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   C:\Users\i0918455\Desktop\sesion5\ejercicio2\obj\Monitor.o
   --   C:\Users\i0918455\Desktop\sesion5\ejercicio2\obj\main.o
   --   -LC:\Users\i0918455\Desktop\sesion5\ejercicio2\obj\
   --   -LC:\Users\i0918455\Desktop\sesion5\ejercicio2\obj\
   --   -LC:/gnat/2017/lib/gcc/i686-pc-mingw32/6.3.1/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -Xlinker
   --   --stack=0x200000,0x1000
   --   -mthreads
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
