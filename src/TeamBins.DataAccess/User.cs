//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TeamBins.DataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class User
    {
        public User()
        {
            this.Activities = new HashSet<Activity>();
            this.Comments = new HashSet<Comment>();
            this.Documents = new HashSet<Document>();
            this.Issues = new HashSet<Issue>();
            this.Issues1 = new HashSet<Issue>();
            this.IssueMembers = new HashSet<IssueMember>();
            this.IssueMembers1 = new HashSet<IssueMember>();
            this.Projects = new HashSet<Project>();
            this.Tasks = new HashSet<Task>();
            this.TeamMemberRequests = new HashSet<TeamMemberRequest>();
            this.TeamMembers = new HashSet<TeamMember>();
            this.TeamMembers1 = new HashSet<TeamMember>();
            this.Teams = new HashSet<Team>();
            this.PasswordResetRequests = new HashSet<PasswordResetRequest>();
        }
    
        public int ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailAddress { get; set; }
        public string Password { get; set; }
        public string JobTitle { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public Nullable<System.DateTime> LastLoginDate { get; set; }
    
        public virtual ICollection<Activity> Activities { get; set; }
        public virtual ICollection<Comment> Comments { get; set; }
        public virtual ICollection<Document> Documents { get; set; }
        public virtual ICollection<Issue> Issues { get; set; }
        public virtual ICollection<Issue> Issues1 { get; set; }
        public virtual ICollection<IssueMember> IssueMembers { get; set; }
        public virtual ICollection<IssueMember> IssueMembers1 { get; set; }
        public virtual ICollection<Project> Projects { get; set; }
        public virtual ICollection<Task> Tasks { get; set; }
        public virtual ICollection<TeamMemberRequest> TeamMemberRequests { get; set; }
        public virtual ICollection<TeamMember> TeamMembers { get; set; }
        public virtual ICollection<TeamMember> TeamMembers1 { get; set; }
        public virtual ICollection<Team> Teams { get; set; }
        public virtual ICollection<PasswordResetRequest> PasswordResetRequests { get; set; }
    }
}
