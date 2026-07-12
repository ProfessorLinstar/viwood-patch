.class public Lcom/android/server/job/restrictions/ThermalStatusRestriction;
.super Lcom/android/server/job/restrictions/JobRestriction;
.source "ThermalStatusRestriction.java"


# instance fields
.field public volatile mThermalStatus:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmThermalStatus(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmThermalStatus(Lcom/android/server/job/restrictions/ThermalStatusRestriction;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 3

    const/16 v0, 0xc

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 46
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/server/job/restrictions/JobRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;III)V

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return-void
.end method


# virtual methods
.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 164
    const-string v0, "Thermal status: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 165
    iget p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(I)V

    return-void
.end method

.method public getThermalStatus()I
    .locals 0

    .line 159
    iget p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return p0
.end method

.method public isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z
    .locals 6

    const/16 v0, 0x28

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    return v1

    .line 101
    :cond_0
    iget v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    return v3

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    .line 105
    iget v2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    const/4 v4, 0x2

    const/16 v5, 0x23

    if-lt v2, v4, :cond_b

    .line 114
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 117
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 118
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result p2

    if-gtz p2, :cond_4

    iget-object p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 119
    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3

    :cond_5
    if-lt p2, v5, :cond_8

    .line 127
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->isImportantWhileForeground()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 128
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result p2

    if-gtz p2, :cond_7

    iget-object p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 129
    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v3

    :cond_8
    const/16 p2, 0x190

    if-ne v0, p2, :cond_a

    .line 134
    iget-object p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_2

    :cond_9
    return v1

    :cond_a
    :goto_2
    return v3

    .line 139
    :cond_b
    iget v2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    if-lt v2, v3, :cond_f

    if-lt p2, v5, :cond_c

    return v1

    :cond_c
    const/16 p2, 0x64

    if-eq v0, p2, :cond_e

    const/16 p2, 0xc8

    if-ne v0, p2, :cond_d

    .line 149
    iget-object p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 151
    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_3

    :cond_d
    return v1

    :cond_e
    :goto_3
    return v3

    :cond_f
    return v1
.end method

.method public onSystemServicesReady()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 54
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 56
    new-instance v1, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;

    invoke-direct {v1, p0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;-><init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    return-void
.end method
