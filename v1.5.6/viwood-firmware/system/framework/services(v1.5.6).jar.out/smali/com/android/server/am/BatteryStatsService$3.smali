.class public Lcom/android/server/am/BatteryStatsService$3;
.super Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;
.source "BatteryStatsService.java"


# instance fields
.field public umi:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 357
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserIds()[I
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$3;->umi:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_0

    .line 362
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService$3;->umi:Lcom/android/server/pm/UserManagerInternal;

    .line 364
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$3;->umi:Lcom/android/server/pm/UserManagerInternal;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
