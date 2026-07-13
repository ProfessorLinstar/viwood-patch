.class public Lcom/android/server/location/provider/LocationProviderManager$3;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;

.field public final synthetic val$newRequest:Landroid/location/provider/ProviderRequest;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V
    .locals 0

    .line 2296
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->val$newRequest:Landroid/location/provider/ProviderRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 3

    .line 2299
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager;->access$1600(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2300
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-static {v1}, Lcom/android/server/location/provider/LocationProviderManager;->-$$Nest$fgetmDelayedRegister(Lcom/android/server/location/provider/LocationProviderManager;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 2301
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/location/provider/LocationProviderManager;->-$$Nest$fputmDelayedRegister(Lcom/android/server/location/provider/LocationProviderManager;Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2302
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->val$newRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->setProviderRequest(Landroid/location/provider/ProviderRequest;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2304
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
