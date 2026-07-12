.class public Lcom/android/server/location/provider/proxy/ProxyLocationProvider;
.super Lcom/android/server/location/provider/AbstractLocationProvider;
.source "ProxyLocationProvider.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;


# instance fields
.field public mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

.field public final mContext:Landroid/content/Context;

.field public final mFlushListeners:Ljava/util/ArrayList;

.field public final mLock:Ljava/lang/Object;

.field public final mName:Ljava/lang/String;

.field public mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

.field public volatile mRequest:Landroid/location/provider/ProviderRequest;

.field public mResetter:Ljava/lang/Runnable;

.field public final mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;


# direct methods
.method public static synthetic $r8$lambda$3-LqQvljoygf2rsXpfzafkZBZyc(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;)V
    .locals 0

    .line 257
    invoke-static {p2}, Landroid/location/provider/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProvider;

    move-result-object p2

    .line 258
    invoke-interface {p2, p0, p1}, Landroid/location/provider/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7VMdFID5UKJaFx-7qHYncL9kLJk(Landroid/location/provider/ProviderRequest;Landroid/os/IBinder;)V
    .locals 0

    .line 217
    invoke-static {p1}, Landroid/location/provider/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProvider;

    move-result-object p1

    .line 218
    invoke-interface {p1, p0}, Landroid/location/provider/ILocationProvider;->setRequest(Landroid/location/provider/ProviderRequest;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .line 118
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    .line 120
    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mContext:Landroid/content/Context;

    .line 122
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object p3

    .line 121
    invoke-static {p1, p2, p3, p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    .line 124
    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mName:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    .line 127
    sget-object p1, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 3

    .line 134
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    .line 136
    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p6

    .line 140
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object p3

    .line 139
    invoke-static {p1, p2, p6, p3, p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Ljava/lang/String;ZLcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    .line 142
    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mName:Ljava/lang/String;

    .line 144
    iput-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    .line 145
    sget-object p1, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Ljava/util/function/UnaryOperator;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Ljava/util/function/UnaryOperator;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Landroid/location/provider/ProviderProperties;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setProperties(Landroid/location/provider/ProviderProperties;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Z)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setAllowed(Z)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Landroid/location/LocationResult;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Landroid/location/LocationResult;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;
    .locals 6

    .line 71
    new-instance v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 73
    invoke-virtual {v0}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->checkServiceResolves()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;
    .locals 7

    .line 87
    new-instance v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V

    .line 89
    invoke-virtual {v0}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->checkServiceResolves()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final checkServiceResolves()Z
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {p0, p2}, Lcom/android/server/servicewatcher/ServiceWatcher;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V
    .locals 2

    .line 154
    invoke-static {p1}, Landroid/location/provider/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProvider;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;-><init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;)V

    iput-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    .line 158
    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 160
    invoke-interface {p1, v1}, Landroid/location/provider/ILocationProvider;->setLocationProviderManager(Landroid/location/provider/ILocationProviderManager;)V

    .line 162
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 163
    sget-object p2, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, p2}, Landroid/location/provider/ProviderRequest;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 164
    invoke-interface {p1, p0}, Landroid/location/provider/ILocationProvider;->setRequest(Landroid/location/provider/ProviderRequest;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 166
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

.method public bridge synthetic onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V
    .locals 0

    .line 56
    check-cast p2, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V

    return-void
.end method

.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance p1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3, p4}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p0, p1}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method public onFlush(Ljava/lang/Runnable;)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;-><init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method public onSetRequest(Landroid/location/provider/ProviderRequest;)V
    .locals 1

    .line 215
    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 216
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda1;-><init>(Landroid/location/provider/ProviderRequest;)V

    invoke-interface {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->unregister()V

    return-void
.end method

.method public onUnbind()V
    .locals 5

    .line 172
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 173
    :try_start_0
    iput-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    .line 174
    iput-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 179
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 180
    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;-><init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;)V

    iput-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    .line 190
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 193
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Runnable;

    .line 194
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 195
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    array-length p0, v1

    :goto_1
    if-ge v2, p0, :cond_1

    .line 199
    aget-object v0, v1, v2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 195
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
