.class public Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;
.super Ljava/lang/Object;
.source "PowerStatsService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public mExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic this$0:Lcom/android/server/powerstats/PowerStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/PowerStatsService;)V
    .locals 1

    .line 289
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-static {p1}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetHandler(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/powerstats/PowerStatsService;Lcom/android/server/powerstats/PowerStatsService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->refreshFlags()V

    return-void
.end method

.method public startListening()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$fgetmDeviceConfig(Lcom/android/server/powerstats/PowerStatsService;)Landroid/provider/DeviceConfigInterface;

    move-result-object v0

    const-string v1, "battery_stats"

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2, p0}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method
