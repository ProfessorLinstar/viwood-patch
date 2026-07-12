.class public final Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "AttentionManagerService.java"


# instance fields
.field public final mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

.field public final mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

.field public final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .locals 0

    .line 929
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 969
    new-instance p1, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-direct {p1, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;-><init>(Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;)V

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    .line 971
    new-instance p1, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    invoke-direct {p1, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;-><init>(Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;)V

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    return-void
.end method


# virtual methods
.method public final cmdCallCancelAttention()I
    .locals 2

    .line 1042
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1043
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-virtual {v1, p0}, Lcom/android/server/attention/AttentionManagerService;->cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    .line 1044
    const-string/jumbo p0, "true"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final cmdCallCheckAttention()I
    .locals 4

    .line 1035
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1036
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    const-wide/16 v2, 0x7d0

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/server/attention/AttentionManagerService;->checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1037
    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final cmdCallOnStartProximityUpdates()I
    .locals 2

    .line 1049
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1050
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    invoke-virtual {v1, p0}, Lcom/android/server/attention/AttentionManagerService;->onStartProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1051
    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final cmdCallOnStopProximityUpdates()I
    .locals 2

    .line 1056
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1057
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    invoke-virtual {v1, p0}, Lcom/android/server/attention/AttentionManagerService;->onStopProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V

    .line 1058
    const-string/jumbo p0, "true"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final cmdClearTestableAttentionService()I
    .locals 1

    .line 1027
    const-string v0, ""

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$sfputsTestAttentionServicePackage(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->reset()V

    .line 1029
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->reset()V

    .line 1030
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->resetStates()V

    const/4 p0, 0x0

    return p0
.end method

.method public final cmdGetLastTestCallbackCode()I
    .locals 1

    .line 1070
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1071
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->getLastCallbackCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final cmdGetLastTestProximityUpdateCallbackCode()I
    .locals 3

    .line 1076
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1077
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->getLastCallbackCode()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(D)V

    const/4 p0, 0x0

    return p0
.end method

.method public final cmdResolveAttentionServiceComponent()I
    .locals 1

    .line 1063
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1064
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/attention/AttentionManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$smresolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1065
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final cmdSetTestableAttentionService(Ljava/lang/String;)I
    .locals 3

    .line 1015
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1016
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "false"

    if-eqz v1, :cond_0

    .line 1017
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1019
    :cond_0
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$sfputsTestAttentionServicePackage(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->resetStates()V

    .line 1021
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_1

    const-string/jumbo v2, "true"

    :cond_1
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 9

    if-nez p1, :cond_0

    .line 977
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 979
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 981
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x3

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "clearTestableAttentionService"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v8

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :sswitch_1
    const-string v2, "getLastTestProximityUpdateCallbackCode"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_1

    :sswitch_2
    const-string v2, "call"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v7

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "setTestableAttentionService"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_1

    :sswitch_4
    const-string v2, "getAttentionServiceComponent"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :sswitch_5
    const-string v2, "getLastTestCallbackCode"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_c

    if-eq v2, v7, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v8, :cond_4

    if-eq v2, v3, :cond_3

    if-eq v2, v5, :cond_2

    .line 1006
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1004
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdGetLastTestProximityUpdateCallbackCode()I

    move-result p0

    return p0

    .line 1002
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdGetLastTestCallbackCode()I

    move-result p0

    return p0

    .line 1000
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdClearTestableAttentionService()I

    move-result p0

    return p0

    .line 998
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdSetTestableAttentionService(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 985
    :cond_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_2

    :sswitch_6
    const-string v2, "checkAttention"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :sswitch_7
    const-string v2, "cancelCheckAttention"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v4, v7

    goto :goto_3

    :sswitch_8
    const-string/jumbo v2, "onStopProximityUpdates"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v4, v8

    goto :goto_3

    :sswitch_9
    const-string/jumbo v2, "onStartProximityUpdates"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v4, v6

    goto :goto_3

    :cond_7
    :goto_2
    move v4, v1

    :goto_3
    if-eqz v4, :cond_b

    if-eq v4, v7, :cond_a

    if-eq v4, v6, :cond_9

    if-ne v4, v8, :cond_8

    .line 993
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdCallOnStopProximityUpdates()I

    move-result p0

    return p0

    .line 995
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid argument"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 991
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdCallOnStartProximityUpdates()I

    move-result p0

    return p0

    .line 989
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdCallCancelAttention()I

    move-result p0

    return p0

    .line 987
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdCallCheckAttention()I

    move-result p0

    return p0

    .line 983
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdResolveAttentionServiceComponent()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 1009
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x480b7350 -> :sswitch_5
        -0x3bbfc7b0 -> :sswitch_4
        -0x18bd18bb -> :sswitch_3
        0x2e7a5e -> :sswitch_2
        0x3e7cfd7c -> :sswitch_1
        0x47229030 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x5db0dcd2 -> :sswitch_9
        0x28e0cfec -> :sswitch_8
        0x2d7ba210 -> :sswitch_7
        0x589284f6 -> :sswitch_6
    .end sparse-switch
.end method

.method public onHelp()V
    .locals 3

    .line 1091
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 1092
    const-string v0, "Attention commands: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1093
    const-string v0, "  setTestableAttentionService <service_package>: Bind to a custom implementation of attention service"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    const-string v0, "  ---<service_package>:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    const-string v0, "       := Package containing the Attention Service implementation to bind to"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    const-string v0, "  ---returns:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    const-string v1, "       := true, if was bound successfully"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1100
    const-string v1, "       := false, if was not bound successfully"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    const-string v1, "  clearTestableAttentionService: Undo custom bindings. Revert to previous behavior"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    const-string v1, "  getAttentionServiceComponent: Get the current service component string"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1105
    const-string v1, "       := If valid, the component string (in shorten form) for the currently bound service."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1107
    const-string v1, "       := else, empty string"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1108
    const-string v1, "  call checkAttention: Calls check attention"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    const-string v1, "       := true, if the call was successfully dispatched to the service implementation. (to see the result, call getLastTestCallbackCode)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1114
    const-string v1, "       := false, otherwise"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1115
    const-string v2, "  call cancelCheckAttention: Cancels check attention"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1116
    const-string v2, "  call onStartProximityUpdates: Calls onStartProximityUpdates"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1118
    const-string v2, "       := true, if the request was successfully dispatched to the service implementation. (to see the result, call getLastTestProximityUpdateCallbackCode)"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1123
    const-string v1, "  call onStopProximityUpdates: Cancels proximity updates"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1124
    const-string v1, "  getLastTestCallbackCode"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1126
    const-string v1, "       := An integer, representing the last callback code received from the bounded implementation. If none, it will return -1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1129
    const-string v1, "  getLastTestProximityUpdateCallbackCode"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    const-string v0, "       := A double, representing the last proximity value received from the bounded implementation. If none, it will return -1.0"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final resetStates()V
    .locals 3

    .line 1082
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1083
    :try_start_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 1084
    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$mcancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService;)V

    .line 1085
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/attention/AttentionManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$smresolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    return-void

    :catchall_0
    move-exception p0

    .line 1085
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
