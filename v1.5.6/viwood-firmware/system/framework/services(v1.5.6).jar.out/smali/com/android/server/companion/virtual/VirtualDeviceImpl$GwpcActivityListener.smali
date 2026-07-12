.class public Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;
.super Ljava/lang/Object;
.source "VirtualDeviceImpl.java"

# interfaces
.implements Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V

    return-void
.end method


# virtual methods
.method public onActivityLaunchBlocked(ILandroid/content/pm/ActivityInfo;Landroid/content/IntentSender;)V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 265
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->createIntent(Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 267
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 266
    invoke-static {v1, v2, v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$mshouldShowBlockedActivityDialog(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmContext(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10008000

    .line 269
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 271
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 268
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 277
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmActivityListener(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object p0

    .line 279
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 280
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 277
    invoke-interface {p0, p1, v0, p2, p3}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onActivityLaunchBlocked(ILandroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 283
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to call mActivityListener for display: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VirtualDeviceImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onDisplayEmpty(I)V
    .locals 2

    .line 255
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmActivityListener(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onDisplayEmpty(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to call mActivityListener for display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VirtualDeviceImpl"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onSecureWindowHidden(I)V
    .locals 2

    .line 330
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmActivityListener(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onSecureWindowHidden(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to call mActivityListener for display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VirtualDeviceImpl"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onSecureWindowShown(ILandroid/content/pm/ActivityInfo;)V
    .locals 5

    .line 290
    const-string v0, "VirtualDeviceImpl"

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmActivityListener(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object v1

    .line 294
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 295
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 292
    invoke-interface {v1, p1, v2, v3}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onSecureWindowShown(ILandroid/content/ComponentName;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to call mActivityListener for display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    :goto_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmOwnerPackageName(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmOwnerUid(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)I

    move-result v2

    .line 301
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    const-wide/32 v3, 0x128b08e3

    .line 300
    invoke-static {v3, v4, v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmContext(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 309
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    .line 312
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmContext(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/content/Context;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const v1, 0x1040a96

    const/4 v2, 0x1

    .line 312
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->showToastWhereUidIsRunning(IIILandroid/os/Looper;)V

    .line 316
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmAttributionSource(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/content/AttributionSource;

    move-result-object p0

    .line 318
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    .line 316
    const-string/jumbo p1, "virtual_devices.value_secure_window_blocked_count"

    invoke-static {p1, p0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_1

    .line 321
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Calling onSecureWindowShown on a non existent/connected display: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public onTopActivityChanged(ILandroid/content/ComponentName;I)V
    .locals 0

    .line 246
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmActivityListener(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to call mActivityListener for display: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VirtualDeviceImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public shouldInterceptIntent(Landroid/content/Intent;)Z
    .locals 11

    .line 344
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmIntentInterceptors(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 347
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmIntentInterceptors(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    move v2, v0

    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 348
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/IntentFilter;

    .line 353
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v4}, Landroid/content/IntentFilter;->countActions()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 355
    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 356
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    const-string v10, "VirtualDeviceImpl"

    .line 354
    invoke-virtual/range {v4 .. v10}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v3, :cond_0

    .line 360
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    .line 362
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 361
    invoke-interface {v0, v3}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;->onIntentIntercepted(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 365
    :try_start_2
    const-string v3, "VirtualDeviceImpl"

    const-string v4, "Unable to call mActivityListener"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 369
    :cond_2
    monitor-exit v1

    return v2

    .line 370
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
