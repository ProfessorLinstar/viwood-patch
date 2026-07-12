.class public final Lcom/android/server/TradeInModeService$TradeInMode;
.super Landroid/os/ITradeInMode$Stub;
.source "TradeInModeService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/TradeInModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/TradeInModeService;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-direct {p0}, Landroid/os/ITradeInMode$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/TradeInModeService;Lcom/android/server/TradeInModeService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/TradeInModeService$TradeInMode;-><init>(Lcom/android/server/TradeInModeService;)V

    return-void
.end method


# virtual methods
.method public final enforceTestingPermissions()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$fgetmContext(Lcom/android/server/TradeInModeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ENTER_TRADE_IN_MODE"

    const-string v2, "Caller must have ENTER_TRADE_IN_MODE permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$misDebuggable(Lcom/android/server/TradeInModeService;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 250
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "ro.debuggable must be set to 1"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enterEvaluationMode()Z
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$fgetmContext(Lcom/android/server/TradeInModeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ENTER_TRADE_IN_MODE"

    const-string v2, "Cannot enter trade-in evaluation mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$mgetTradeInModeState(Lcom/android/server/TradeInModeService;)I

    move-result v0

    .line 172
    const-string v1, "TradeInModeService"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 173
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot enter evaluation mode in state: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$misFrpActive(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string p0, "Cannot enter evaluation mode, FRP lock is present."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$mscheduleTradeInModeWipe(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 184
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 186
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v2}, Lcom/android/server/TradeInModeService;->-$$Nest$mremoveNetworkWatch(Lcom/android/server/TradeInModeService;)V

    .line 187
    iget-object v2, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v2}, Lcom/android/server/TradeInModeService;->-$$Nest$mremoveAccountsWatch(Lcom/android/server/TradeInModeService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x2

    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.adb.tradeinmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$mrestartAdbd(Lcom/android/server/TradeInModeService;)V

    return v3

    :catchall_0
    move-exception p0

    .line 189
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    throw p0
.end method

.method public isEvaluationModeAllowed()Z
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$fgetmContext(Lcom/android/server/TradeInModeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ENTER_TRADE_IN_MODE"

    const-string v2, "Cannot test for trade-in evaluation mode allowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$misFrpActive(Lcom/android/server/TradeInModeService;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isTesting()Z
    .locals 0

    .line 241
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceTestingPermissions()V

    .line 243
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$misForceEnabledForTesting(Lcom/android/server/TradeInModeService;)Z

    move-result p0

    return p0
.end method

.method public scheduleWipeForTesting()V
    .locals 0

    .line 208
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceTestingPermissions()V

    .line 210
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$mscheduleTradeInModeWipe(Lcom/android/server/TradeInModeService;)Z

    return-void
.end method

.method public start()Z
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$fgetmContext(Lcom/android/server/TradeInModeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ENTER_TRADE_IN_MODE"

    const-string v2, "Cannot enter trade-in mode foyer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$mgetTradeInModeState(Lcom/android/server/TradeInModeService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 137
    const-string v3, "TradeInModeService"

    if-eqz v0, :cond_1

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot enter trade-in mode in state: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$misDeviceSetup(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    const-string p0, "Not starting trade-in mode, device is setup."

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$misDebuggable(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$misForceEnabledForTesting(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 149
    const-string p0, "Not starting trade-in mode, device is debuggable."

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$misAdbEnabled(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    const-string p0, "Not starting trade-in mode, adb is already enabled."

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 157
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 159
    :try_start_0
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$mstartTradeInMode(Lcom/android/server/TradeInModeService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    throw p0
.end method

.method public startTesting()V
    .locals 0

    .line 216
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceTestingPermissions()V

    .line 218
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$menterTestMode(Lcom/android/server/TradeInModeService;)V

    return-void
.end method

.method public stopTesting()V
    .locals 2

    .line 224
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceTestingPermissions()V

    .line 226
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$misForceEnabledForTesting(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 232
    :try_start_0
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$mleaveTestMode(Lcom/android/server/TradeInModeService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    throw p0

    .line 227
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "testing must have been started"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
