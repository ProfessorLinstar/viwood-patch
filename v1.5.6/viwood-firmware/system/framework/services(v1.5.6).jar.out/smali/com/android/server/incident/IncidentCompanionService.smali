.class public Lcom/android/server/incident/IncidentCompanionService;
.super Lcom/android/server/SystemService;
.source "IncidentCompanionService.java"


# static fields
.field public static final DUMP_AND_USAGE_STATS_PERMISSIONS:[Ljava/lang/String;

.field public static RESTRICTED_IMAGE_DUMP_ARGS:[Ljava/lang/String;


# instance fields
.field public mPendingReports:Lcom/android/server/incident/PendingReports;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPendingReports(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetIIncidentManager(Lcom/android/server/incident/IncidentCompanionService;)Landroid/os/IIncidentManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/incident/IncidentCompanionService;->getIIncidentManager()Landroid/os/IIncidentManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDUMP_AND_USAGE_STATS_PERMISSIONS()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/incident/IncidentCompanionService;->DUMP_AND_USAGE_STATS_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetRESTRICTED_IMAGE_DUMP_ARGS()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/incident/IncidentCompanionService;->RESTRICTED_IMAGE_DUMP_ARGS:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 57
    const-string v0, "--hal"

    const-string v1, "--restricted_image"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/incident/IncidentCompanionService;->RESTRICTED_IMAGE_DUMP_ARGS:[Ljava/lang/String;

    .line 63
    const-string v0, "android.permission.DUMP"

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/incident/IncidentCompanionService;->DUMP_AND_USAGE_STATS_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 379
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 380
    new-instance v0, Lcom/android/server/incident/PendingReports;

    invoke-direct {v0, p1}, Lcom/android/server/incident/PendingReports;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    return-void
.end method

.method public static getCurrentUserIfAdmin()I
    .locals 4

    .line 423
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, -0x2710

    .line 430
    const-string v2, "IncidentCompanionService"

    if-nez v0, :cond_0

    .line 431
    const-string v0, "No current user.  Nobody to approve the report. The report will be denied."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 436
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_1

    .line 437
    const-string v0, "Only an admin user running in foreground can approve bugreports, but the current foreground user is not an admin user. The report will be denied."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 443
    :cond_1
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    return v0

    :catch_0
    move-exception v0

    .line 426
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final getIIncidentManager()Landroid/os/IIncidentManager;
    .locals 0

    .line 411
    const-string p0, "incident"

    .line 412
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 411
    invoke-static {p0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object p0

    return-object p0
.end method

.method public onBootPhase(I)V
    .locals 1

    .line 398
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    return-void

    .line 401
    :cond_0
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    invoke-virtual {p0}, Lcom/android/server/incident/PendingReports;->onBootCompleted()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 389
    new-instance v0, Lcom/android/server/incident/IncidentCompanionService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;-><init>(Lcom/android/server/incident/IncidentCompanionService;Lcom/android/server/incident/IncidentCompanionService-IA;)V

    const-string v1, "incidentcompanion"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
