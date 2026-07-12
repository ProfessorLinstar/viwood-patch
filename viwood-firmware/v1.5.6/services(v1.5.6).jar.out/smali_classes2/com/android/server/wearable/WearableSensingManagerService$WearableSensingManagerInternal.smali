.class public final Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;
.super Landroid/app/wearable/IWearableSensingManager$Stub;
.source "WearableSensingManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wearable/WearableSensingManagerService;


# direct methods
.method public static synthetic $r8$lambda$0H_E_qDjsxPZmOYFc9dvk030MYo(Landroid/content/ComponentName;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 649
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onStartHotwordRecognition(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EF-uIxqtuFTJSRw2XlHTCL6VxJk(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 521
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FQPsiOmODaJwpoXqJrGspTXXVu0(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 541
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvidedData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GD3SVVAzUzk7NYaRmvAnKLDJBjw(IILjava/lang/String;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 626
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onUnregisterDataRequestObserver(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$StwI29O9xcoE36JIbnvRNo1wfXU(Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 667
    invoke-virtual {p1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onStopHotwordRecognition(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eb20XFBZxiozdMfF0WntWX1dEzo(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 441
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pJOeoRaVcsR_Urr4ycisbCEvlT4(ILandroid/os/RemoteCallback;ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 1

    .line 588
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p3

    move-object v0, p1

    move p1, p0

    move-object p0, p5

    move-object p5, p4

    move-object p4, p3

    move p3, p2

    move-object p2, v0

    .line 584
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onRegisterDataRequestObserver(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-direct {p0}, Landroid/app/wearable/IWearableSensingManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;Lcom/android/server/wearable/WearableSensingManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;)V

    return-void
.end method


# virtual methods
.method public getAvailableConnectionCount()I
    .locals 1

    const/4 v0, 0x0

    .line 416
    invoke-virtual {p0, v0}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->getAvailableConnectionCount()I

    move-result p0

    return p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 678
    new-instance v0, Lcom/android/server/wearable/WearableSensingShellCommand;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wearable/WearableSensingShellCommand;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 679
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public provideConcurrentConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)I
    .locals 2

    .line 452
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal provideConcurrentConnection."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    invoke-virtual {p0, p4}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 462
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideConcurrentConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)I

    move-result p0

    return p0
.end method

.method public provideConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 428
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal provideConnection."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 434
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 435
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 439
    :cond_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    invoke-static {p0, v0, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 529
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal provideData."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 535
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 536
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 540
    :cond_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda5;-><init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    invoke-static {p0, v0, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 508
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal provideDataStream."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 514
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 515
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 519
    :cond_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda2;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    invoke-static {p0, v0, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V
    .locals 2

    .line 493
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal provideReadOnlyParcelFileDescriptor."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 499
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public registerDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .locals 9

    .line 549
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WearableSensingManagerInternal registerDataRequestObserver."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v1, v1, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v1, :cond_0

    .line 554
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 555
    invoke-static {p3, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 559
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 562
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmDataRequestObserverContexts(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/Set;

    move-result-object v7

    monitor-enter v7

    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 564
    invoke-static {v1, p1, v3, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mgetDataRequestObserverContext(Lcom/android/server/wearable/WearableSensingManagerService;IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 566
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Received duplicate data request observer."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v3, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestRemoteCallback:Landroid/os/RemoteCallback;

    .line 568
    iget v1, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestObserverId:I

    move-object v2, v3

    move v3, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 570
    :cond_1
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 571
    invoke-static {v1, p2, v3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcreateDataRequestRemoteCallback(Lcom/android/server/wearable/WearableSensingManagerService;Landroid/app/PendingIntent;I)Landroid/os/RemoteCallback;

    move-result-object v6

    .line 572
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmNextDataRequestObserverId(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 573
    iget-object v5, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v5}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmDataRequestObserverContexts(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/Set;

    move-result-object v8

    move v4, v1

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;-><init>(IIILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v3, v4

    move-object v2, v6

    .line 581
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    iget-object v6, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;-><init>(ILandroid/os/RemoteCallback;ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    invoke-static {v6, v0, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void

    .line 581
    :goto_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeAllConnections()V
    .locals 2

    .line 479
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal removeAllConnections."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 481
    invoke-virtual {p0, v0}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->removeAllConnections()V

    return-void
.end method

.method public removeConnection(I)Z
    .locals 2

    .line 468
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal removeConnection."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0, v0}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 474
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->removeConnection(I)Z

    move-result p0

    return p0
.end method

.method public startHotwordRecognition(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 637
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal startHotwordRecognition."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 639
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 642
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 643
    invoke-static {p2, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 647
    :cond_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda3;-><init>(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    invoke-static {p0, v0, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public stopHotwordRecognition(Landroid/os/RemoteCallback;)V
    .locals 3

    .line 656
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal stopHotwordRecognition."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 658
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 661
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Service not available."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 662
    invoke-static {p1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 666
    :cond_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda4;-><init>(Landroid/os/RemoteCallback;)V

    invoke-static {p0, v0, p1}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public unregisterDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 598
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal unregisterDataRequestObserver."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 604
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 605
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 609
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 612
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmDataRequestObserverContexts(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 613
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 614
    invoke-static {v2, p1, v0, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mgetDataRequestObserverContext(Lcom/android/server/wearable/WearableSensingManagerService;IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    move-result-object p2

    if-nez p2, :cond_1

    .line 616
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Previous observer not found, cannot unregister."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmDataRequestObserverContexts(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 620
    iget v0, p2, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestObserverId:I

    .line 621
    iget-object p2, p2, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestPendingIntent:Landroid/app/PendingIntent;

    .line 622
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p2

    .line 623
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;-><init>(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-static {p0, v1, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void

    .line 623
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    .locals 5

    .line 685
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_1

    .line 688
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Service not available."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 690
    invoke-static {p1, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    :cond_0
    return-object v1

    .line 695
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 697
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v3}, Lcom/android/server/wearable/WearableSensingManagerService;->access$000(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 698
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {p0, v0}, Lcom/android/server/wearable/WearableSensingManagerService;->access$100(Lcom/android/server/wearable/WearableSensingManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 699
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_3

    .line 701
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service not available for userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 703
    invoke-static {p1, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    :cond_2
    return-object v1

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    .line 699
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
