.class public final Lcom/android/server/DeviceIdleController$MyHandler;
.super Landroid/os/Handler;
.source "DeviceIdleController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V
    .locals 0

    .line 1955
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1956
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1961
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    .line 2083
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2084
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmNetworkPolicyManagerInternal(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1, v3, v3, v1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZILjava/lang/String;)V

    return-void

    .line 2076
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2077
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 2078
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 2079
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmNetworkPolicyManagerInternal(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;

    move-result-object p0

    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZILjava/lang/String;)V

    return-void

    .line 2059
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2060
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 2062
    :goto_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    .line 2063
    :try_start_0
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmTempAllowlistChangeListeners(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmTempAllowlistChangeListeners(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;

    move-result-object p0

    .line 2065
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;

    .line 2063
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;

    .line 2066
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2067
    array-length p1, p0

    :goto_1
    if-ge v3, p1, :cond_e

    aget-object v1, p0, v3

    if-eqz v2, :cond_1

    .line 2069
    invoke-interface {v1, v0}, Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;->onAppAdded(I)V

    goto :goto_2

    .line 2071
    :cond_1
    invoke-interface {v1, v0}, Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;->onAppRemoved(I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2066
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 2088
    :pswitch_4
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 2089
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_2

    .line 2091
    invoke-interface {p0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->startMonitoring()V

    return-void

    .line 2093
    :cond_2
    invoke-interface {p0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->stopMonitoring()V

    return-void

    .line 2056
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    return-void

    .line 2097
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 2101
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v2

    .line 2102
    :try_start_2
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$misStationaryLocked(Lcom/android/server/DeviceIdleController;)Z

    move-result v0

    if-nez p1, :cond_3

    .line 2105
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmStationaryListeners(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmStationaryListeners(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;

    move-result-object p0

    .line 2107
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 2105
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, [Lcom/android/server/DeviceIdleInternal$StationaryListener;

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_5

    .line 2111
    :cond_3
    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    .line 2113
    array-length p0, v1

    :goto_4
    if-ge v3, p0, :cond_4

    aget-object v2, v1, v3

    .line 2114
    invoke-interface {v2, v0}, Lcom/android/server/DeviceIdleInternal$StationaryListener;->onDeviceStationaryChanged(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    if-eqz p1, :cond_e

    .line 2118
    invoke-interface {p1, v0}, Lcom/android/server/DeviceIdleInternal$StationaryListener;->onDeviceStationaryChanged(Z)V

    return-void

    .line 2111
    :goto_5
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 2051
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2052
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->checkTempAppWhitelistTimeout(I)V

    return-void

    .line 2027
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2028
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_5

    move-object v2, v0

    goto :goto_6

    .line 2030
    :cond_5
    const-string/jumbo v2, "unknown"

    .line 2029
    :goto_6
    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 2031
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v2

    .line 2032
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v4

    .line 2034
    :try_start_4
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmNetworkPolicyManager(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 2035
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmBatteryStats(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5, v3, v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    if-eqz v2, :cond_6

    .line 2040
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleIntentOptions(Lcom/android/server/DeviceIdleController;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    if-eqz v4, :cond_7

    .line 2044
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLightIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLightIdleIntentOptions(Lcom/android/server/DeviceIdleController;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2047
    :cond_7
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    goto/16 :goto_8

    .line 1999
    :pswitch_9
    const-string/jumbo p1, "unknown"

    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 2000
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result p1

    .line 2001
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v0

    .line 2003
    :try_start_5
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmNetworkPolicyManager(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 2004
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmBatteryStats(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    .line 2005
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 2004
    invoke-interface {v2, v3, v1, v4}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    if-eqz p1, :cond_8

    .line 2009
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 2010
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalActivityManager(Lcom/android/server/DeviceIdleController;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v2

    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleStartedDoneReceiver(Lcom/android/server/DeviceIdleController;)Landroid/content/IIntentReceiver;

    move-result-object v3

    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleIntentOptions(Lcom/android/server/DeviceIdleController;)Landroid/os/Bundle;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    :cond_8
    if-eqz v0, :cond_9

    .line 2015
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 2016
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalActivityManager(Lcom/android/server/DeviceIdleController;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLightIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v1

    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleStartedDoneReceiver(Lcom/android/server/DeviceIdleController;)Landroid/content/IIntentReceiver;

    move-result-object v2

    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLightIdleIntentOptions(Lcom/android/server/DeviceIdleController;)Landroid/os/Bundle;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    .line 2022
    :cond_9
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 2023
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    goto/16 :goto_8

    .line 1969
    :pswitch_a
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnStart()V

    .line 1972
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_a

    .line 1973
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1974
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v3

    goto :goto_7

    .line 1976
    :cond_a
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1977
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v3

    .line 1980
    :goto_7
    :try_start_6
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmNetworkPolicyManager(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1981
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmBatteryStats(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v4, :cond_b

    move v2, v4

    .line 1983
    :cond_b
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    .line 1981
    invoke-interface {v5, v2, v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    if-eqz v0, :cond_c

    .line 1987
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleIntentOptions(Lcom/android/server/DeviceIdleController;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_c
    if-eqz v3, :cond_d

    .line 1991
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLightIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLightIdleIntentOptions(Lcom/android/server/DeviceIdleController;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1994
    :cond_d
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnComplete()V

    .line 1995
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmGoingIdleWakeLock(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_e
    :goto_8
    return-void

    .line 1964
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
