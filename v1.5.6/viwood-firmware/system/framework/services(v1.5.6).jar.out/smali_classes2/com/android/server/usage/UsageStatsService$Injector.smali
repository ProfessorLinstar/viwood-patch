.class Lcom/android/server/usage/UsageStatsService$Injector;
.super Ljava/lang/Object;
.source "UsageStatsService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppStandbyController(Landroid/content/Context;)Lcom/android/server/usage/AppStandbyInternal;
    .locals 0

    .line 300
    const-class p0, Lcom/android/server/usage/UsageStatsService;

    .line 301
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 300
    invoke-static {p0, p1}, Lcom/android/server/usage/AppStandbyInternal;->newAppStandbyController(Ljava/lang/ClassLoader;Landroid/content/Context;)Lcom/android/server/usage/AppStandbyInternal;

    move-result-object p0

    return-object p0
.end method
