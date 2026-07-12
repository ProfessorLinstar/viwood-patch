.class Lcom/android/server/job/JobConcurrencyManager$Injector;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createJobServiceContext(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/server/job/JobNotificationCoordinator;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)Lcom/android/server/job/JobServiceContext;
    .locals 0

    .line 3009
    new-instance p0, Lcom/android/server/job/JobServiceContext;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/server/job/JobNotificationCoordinator;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V

    return-object p0
.end method
