<cfcomponent>
    <cffunction  name="getAge" access="remote">
        <cfif structKeyExists(form, 'submit')>
            <cfset child= form.date>
            <cfset Mom=form.mother>
            <cfif "#child#" eq "#Mom#">
                Invalid! 
                <cfelse>
                    <cfset datefrmt= dateFormat("#now()#", "yyyy")> 
                    <cfset Userfrmt=dateFormat("#child#", "YYYY")>
                    <cfset Momfrmt= dateFormat("#mother#", "yyyy")>
                    <cfset a= dateFormat("#now()#", "yyyy") + 1>
                    <cfset m = dateFormat("#child#", "mm")>
                    <cfset d = dateFormat("#child#", "dd")>
                    <cfset mM = dateFormat("#mother#", "mm")>
                    <cfset dM = dateFormat("#mother#", "dd")>
                    <cfset day = createDate("#a#", "#m#" , "#d#")>
                    <cfset dayM = createDate("#a#", "#mM#" , "#dM#")>
                    <cfset daystill=dateDiff("d", now(), day)>
                    <cfset daystillM=dateDiff("d", now(), dayM)>
                    <cfset age = #datefrmt# - #Userfrmt#>
                    <cfset MomAge=  #Userfrmt# - #Momfrmt#>
                    <cfoutput>
                        Users age is: #age# <br>
                        At age #MomAge# his mother delivered him. <br>
                        #daystill# remaining for child's birthday <br>
                        #daystillM# remaining for Mother's birthday.
                    </cfoutput>
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>