.class public Lcom/android/server/devicestate/DeviceStateManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "DeviceStateManagerShellCommand.java"


# static fields
.field public static sLastBaseStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;

.field public static sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;


# instance fields
.field public final mClient:Landroid/hardware/devicestate/DeviceStateManager;

.field public final mService:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 48
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    return-void
.end method

.method public static toString(Ljava/util/Optional;)Ljava/lang/String;
    .locals 1

    .line 215
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "(none)"

    return-object p0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 3

    if-nez p1, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "print-states-simple"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "print-states"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "print-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "base-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 70
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 60
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->runState(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 68
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->runPrintStatesSimple(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 66
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->runPrintStates(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 64
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->runPrintState(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 62
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->runBaseState(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x71a3416b -> :sswitch_4
        -0x54c2ea8f -> :sswitch_3
        -0x439a66de -> :sswitch_2
        -0x119b2743 -> :sswitch_1
        0x68ac491 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 1

    .line 200
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 201
    const-string v0, "Device state manager (device_state) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    const-string v0, "  state [reset|OVERRIDE_DEVICE_STATE]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    const-string v0, "    Return or override device state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    const-string v0, "  print-state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    const-string v0, "    Return the current device state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    const-string v0, "  print-states"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    const-string v0, "    Return list of currently supported device states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    const-string v0, "  print-states-simple"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    const-string v0, "    Return the currently supported device states in comma separated format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printAllStates(Ljava/io/PrintWriter;)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getCommittedState()Ljava/util/Optional;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getBaseState()Ljava/util/Optional;

    move-result-object v1

    .line 77
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getOverrideState()Ljava/util/Optional;

    move-result-object p0

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Committed state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->toString(Ljava/util/Optional;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "----------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->toString(Ljava/util/Optional;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final runBaseState(Ljava/io/PrintWriter;)I
    .locals 7

    .line 129
    const-string v0, ""

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->printAllStates(Ljava/io/PrintWriter;)V

    return v2

    .line 135
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 p1, -0x1

    .line 137
    :try_start_0
    const-string/jumbo v5, "reset"

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 138
    sget-object v1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastBaseStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    if-eqz v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceStateManager;->cancelBaseStateOverride()V

    .line 140
    sput-object v6, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastBaseStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    .line 143
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 144
    invoke-static {v1}, Landroid/hardware/devicestate/DeviceStateRequest;->newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->build()Landroid/hardware/devicestate/DeviceStateRequest;

    move-result-object v1

    .line 146
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v5, v1, v6, v6}, Landroid/hardware/devicestate/DeviceStateManager;->requestBaseStateOverride(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    .line 148
    sput-object v1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastBaseStateRequest:Landroid/hardware/devicestate/DeviceStateRequest;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_2
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 154
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "-------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Run:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "    print-states"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "to get the list of currently supported device states"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 151
    :catch_1
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: requested state should be an integer"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    throw p0
.end method

.method public final runPrintState(Ljava/io/PrintWriter;)I
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getCommittedState()Ljava/util/Optional;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: device state not available."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final runPrintStates(Ljava/io/PrintWriter;)I
    .locals 4

    .line 180
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStates()Ljava/util/List;

    move-result-object p0

    .line 181
    const-string v0, "Supported states: [\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 182
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public final runPrintStatesSimple(Ljava/io/PrintWriter;)I
    .locals 1

    .line 190
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mService:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStates()Ljava/util/List;

    move-result-object p0

    .line 191
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda0;-><init>()V

    .line 192
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand$$ExternalSyntheticLambda1;-><init>()V

    .line 193
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    .line 194
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 190
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runState(Ljava/io/PrintWriter;)I
    .locals 7

    .line 88
    const-string v0, ""

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->printAllStates(Ljava/io/PrintWriter;)V

    return v2

    .line 94
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 p1, -0x1

    .line 96
    :try_start_0
    const-string/jumbo v5, "reset"

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 97
    sget-object v1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceStateManager;->cancelStateRequest()V

    .line 99
    sput-object v6, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    .line 102
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 103
    invoke-static {v1}, Landroid/hardware/devicestate/DeviceStateRequest;->newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->build()Landroid/hardware/devicestate/DeviceStateRequest;

    move-result-object v1

    .line 105
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->mClient:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v5, v1, v6, v6}, Landroid/hardware/devicestate/DeviceStateManager;->requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    .line 107
    sput-object v1, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;->sLastRequest:Landroid/hardware/devicestate/DeviceStateRequest;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_2
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 113
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "-------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Run:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "    print-states"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "to get the list of currently supported device states"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 110
    :catch_1
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: requested state should be an integer"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    throw p0
.end method
