<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="21008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="controls" Type="Folder">
			<Item Name="Data Holder.ctl" Type="VI" URL="../controls/Data Holder.ctl"/>
			<Item Name="Library Info.ctl" Type="VI" URL="../controls/Library Info.ctl"/>
		</Item>
		<Item Name="Queue Driver" Type="Folder">
			<Item Name="Queue Driver.lvlib" Type="Library" URL="../../../measurement_migration_tool/_Measurement Migrator/Migrator/Queue Driver/Queue Driver.lvlib"/>
		</Item>
		<Item Name="subVIs" Type="Folder">
			<Item Name="Classify Dependencies.vi" Type="VI" URL="../subVIs/Classify Dependencies.vi"/>
			<Item Name="Create Auto-Populating Folder.vi" Type="VI" URL="../subVIs/Create Auto-Populating Folder.vi"/>
			<Item Name="Create Directory for Dependency.vi" Type="VI" URL="../subVIs/Create Directory for Dependency.vi"/>
			<Item Name="Get Dependencies.vi" Type="VI" URL="../subVIs/Get Dependencies.vi"/>
			<Item Name="Get Relative Path for Dependency.vi" Type="VI" URL="../subVIs/Get Relative Path for Dependency.vi"/>
			<Item Name="Get SubVI Dependencies.vi" Type="VI" URL="../subVIs/Get SubVI Dependencies.vi"/>
			<Item Name="Migrate Measurement Dependencies.vi" Type="VI" URL="../subVIs/Migrate Measurement Dependencies.vi"/>
			<Item Name="Save Project.vi" Type="VI" URL="../subVIs/Save Project.vi"/>
		</Item>
		<Item Name="Migrate Dependencies.vi" Type="VI" URL="../Migrate Dependencies.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Compare Two Paths.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Compare Two Paths.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
