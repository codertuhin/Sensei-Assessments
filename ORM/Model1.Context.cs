﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace coopors.ORM
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SenseiPortalEntities2 : DbContext
    {
        public SenseiPortalEntities2()
            : base("name=SenseiPortalEntities2")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<tblAssessment> tblAssessments { get; set; }
        public DbSet<tblHoltState> tblHoltStates { get; set; }
        public DbSet<tblQuestion> tblQuestions { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<AnswerState> AnswerStates { get; set; }
        public DbSet<UserReport> UserReports { get; set; }
        public DbSet<Transaction> Transactions { get; set; }
    }
}
