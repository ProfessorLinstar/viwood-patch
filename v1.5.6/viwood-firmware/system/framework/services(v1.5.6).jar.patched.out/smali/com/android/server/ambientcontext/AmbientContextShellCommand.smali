.class public final Lcom/android/server/ambientcontext/AmbientContextShellCommand;
.super Landroid/os/ShellCommand;
.source "AmbientContextShellCommand.java"


# static fields
.field public static final MIXED_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public static final REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public static final TAG:Ljava/lang/String;

.field public static final WEARABLE_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public static final sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;


# instance fields
.field public final mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    const-class v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    invoke-direct {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    move-result-object v0

    const/4 v2, 0x2

    .line 45
    invoke-virtual {v0, v2}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    move-result-object v0

    const/4 v2, 0x3

    .line 46
    invoke-virtual {v0, v2}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->build()Landroid/app/ambientcontext/AmbientContextEventRequest;

    move-result-object v0

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 52
    new-instance v0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    invoke-direct {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;-><init>()V

    const v2, 0x186a1

    .line 54
    invoke-virtual {v0, v2}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->build()Landroid/app/ambientcontext/AmbientContextEventRequest;

    move-result-object v0

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->WEARABLE_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 57
    new-instance v0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    invoke-direct {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;-><init>()V

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v2}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->build()Landroid/app/ambientcontext/AmbientContextEventRequest;

    move-result-object v0

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->MIXED_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 113
    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    invoke-direct {v0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;-><init>()V

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    return-void
.end method


# virtual methods
.method public final getBoundPackageName()I
    .locals 3

    .line 259
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 260
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 261
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->DEFAULT:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getComponentName(ILcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    .line 263
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getLastStatusCode()I
    .locals 1

    .line 222
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 223
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    invoke-virtual {v0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->getLastStatus()I

    move-result v0

    .line 224
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 122
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "start-detection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "get-last-status-code"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v1, "query-service-status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v1, "set-temporary-service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "query-wearable-service-status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "set-temporary-services"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "start-detection-mixed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "start-detection-wearable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "query-mixed-service-status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_9
    const-string/jumbo v1, "stop-detection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_a
    const-string v1, "get-bound-package"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 146
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 124
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->runStartDetection()I

    move-result p0

    return p0

    .line 132
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getLastStatusCode()I

    move-result p0

    return p0

    .line 134
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->runQueryServiceStatus()I

    move-result p0

    return p0

    .line 142
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->setTemporaryService()I

    move-result p0

    return p0

    .line 136
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->runQueryWearableServiceStatus()I

    move-result p0

    return p0

    .line 144
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->setTemporaryServices()I

    move-result p0

    return p0

    .line 128
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->runMixedStartDetection()I

    move-result p0

    return p0

    .line 126
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->runWearableStartDetection()I

    move-result p0

    return p0

    .line 138
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->runQueryMixedServiceStatus()I

    move-result p0

    return p0

    .line 130
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->runStopDetection()I

    move-result p0

    return p0

    .line 140
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->getBoundPackageName()I

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c399b40 -> :sswitch_a
        -0x7a19e586 -> :sswitch_9
        -0x6ce969ff -> :sswitch_8
        -0x36dbe914 -> :sswitch_7
        -0x36d18cb8 -> :sswitch_6
        -0x6755c5b -> :sswitch_5
        0x383c9ef9 -> :sswitch_4
        0x41db2e8e -> :sswitch_3
        0x5a9159af -> :sswitch_2
        0x784ce7c8 -> :sswitch_1
        0x7c42deda -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 3

    .line 230
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 231
    const-string v0, "AmbientContextEvent commands: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 235
    const-string v0, "  start-detection USER_ID PACKAGE_NAME: Starts AmbientContextEvent detection."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    const-string v0, "  start-detection-wearable USER_ID PACKAGE_NAME: Starts AmbientContextEvent detection for wearable."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    const-string v0, "  start-detection-mixed USER_ID PACKAGE_NAME:  Starts AmbientContextEvent detection for mixed events."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    const-string v0, "  stop-detection USER_ID PACKAGE_NAME: Stops AmbientContextEvent detection."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    const-string v0, "  get-last-status-code: Prints the latest request status code."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    const-string v0, "  query-service-status USER_ID PACKAGE_NAME: Prints the service status code."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    const-string v0, "  query-wearable-service-status USER_ID PACKAGE_NAME: Prints the service status code for wearable."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    const-string v0, "  query-mixed-service-status USER_ID PACKAGE_NAME: Prints the service status code for mixed events."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    const-string v0, "  get-bound-package USER_ID:     Print the bound package that implements the service."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    const-string v0, "  set-temporary-service USER_ID [PACKAGE_NAME] [COMPONENT_NAME DURATION]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    const-string v0, "    Temporarily (for DURATION ms) changes the service implementation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    const-string v1, "    To reset, call with just the USER_ID argument."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    const-string v2, "  set-temporary-services USER_ID [FIRST_PACKAGE_NAME] [SECOND_PACKAGE_NAME] [COMPONENT_NAME DURATION]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runMixedStartDetection()I
    .locals 6

    .line 173
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 174
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->MIXED_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    sget-object v4, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 177
    invoke-static {v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateAmbientContextObserver(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/app/ambientcontext/IAmbientContextObserver;

    move-result-object v5

    .line 175
    invoke-virtual {v2, v0, v3, v1, v5}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->startDetection(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 178
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 179
    invoke-static {v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateAmbientContextObserver(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/app/ambientcontext/IAmbientContextObserver;

    move-result-object v2

    .line 178
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runQueryMixedServiceStatus()I
    .locals 4

    .line 211
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 212
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x186a1

    .line 213
    filled-new-array {v2, v3}, [I

    move-result-object v2

    .line 216
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 217
    invoke-static {v3}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateRemoteStatusCallback(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/os/RemoteCallback;

    move-result-object v3

    .line 216
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->queryServiceStatus(ILjava/lang/String;[ILandroid/os/RemoteCallback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runQueryServiceStatus()I
    .locals 4

    .line 191
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 192
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 193
    filled-new-array {v2, v3}, [I

    move-result-object v2

    .line 196
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 197
    invoke-static {v3}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateRemoteStatusCallback(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/os/RemoteCallback;

    move-result-object v3

    .line 196
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->queryServiceStatus(ILjava/lang/String;[ILandroid/os/RemoteCallback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runQueryWearableServiceStatus()I
    .locals 4

    .line 202
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 203
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const v2, 0x186a1

    .line 204
    filled-new-array {v2}, [I

    move-result-object v2

    .line 205
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 206
    invoke-static {v3}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateRemoteStatusCallback(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/os/RemoteCallback;

    move-result-object v3

    .line 205
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->queryServiceStatus(ILjava/lang/String;[ILandroid/os/RemoteCallback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runStartDetection()I
    .locals 6

    .line 151
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 152
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    sget-object v4, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 155
    invoke-static {v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateAmbientContextObserver(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/app/ambientcontext/IAmbientContextObserver;

    move-result-object v5

    .line 153
    invoke-virtual {v2, v0, v3, v1, v5}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->startDetection(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 156
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 157
    invoke-static {v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateAmbientContextObserver(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/app/ambientcontext/IAmbientContextObserver;

    move-result-object v2

    .line 156
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runStopDetection()I
    .locals 2

    .line 184
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 185
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 186
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->stopAmbientContextEvent(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runWearableStartDetection()I
    .locals 6

    .line 162
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 163
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 164
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->WEARABLE_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    sget-object v4, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 166
    invoke-static {v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateAmbientContextObserver(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/app/ambientcontext/IAmbientContextObserver;

    move-result-object v5

    .line 164
    invoke-virtual {v2, v0, v3, v1, v5}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->startDetection(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 167
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 168
    invoke-static {v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateAmbientContextObserver(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/app/ambientcontext/IAmbientContextObserver;

    move-result-object v2

    .line 167
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setTemporaryService()I
    .locals 5

    .line 268
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 270
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    .line 273
    const-string v2, "AmbientContextDetectionService temporary reset. "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    return v3

    .line 278
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 279
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 280
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AmbientContextDetectionService temporarily set to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method

.method public final setTemporaryServices()I
    .locals 10

    .line 287
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 288
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 289
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    .line 290
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 301
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryServices(I[Ljava/lang/String;I)V

    .line 302
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AmbientContextDetectionService temporarily set to "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v5

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v5

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 293
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    .line 294
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {p0, v1, v5}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    .line 295
    const-string p0, "AmbientContextDetectionService temporary reset."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method
