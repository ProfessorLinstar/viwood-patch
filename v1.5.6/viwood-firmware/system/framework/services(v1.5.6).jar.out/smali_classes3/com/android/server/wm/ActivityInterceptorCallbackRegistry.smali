.class public Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;
.super Ljava/lang/Object;
.source "ActivityInterceptorCallbackRegistry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final sInstance:Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;->sInstance:Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;
    .locals 1

    .line 45
    sget-object v0, Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;->sInstance:Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;

    return-object v0
.end method


# virtual methods
.method public getCallingUid()I
    .locals 0

    .line 120
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public registerActivityInterceptorCallback(ILcom/android/server/wm/ActivityInterceptorCallback;)V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_2

    .line 72
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback;->isValidMainlineOrderId(I)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 81
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 82
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V

    return-void

    .line 78
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The passed ActivityInterceptorCallback can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "id is not in the mainline modules range, please useActivityTaskManagerInternal.registerActivityStartInterceptor(OrderedId, ActivityInterceptorCallback) instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system server can register ActivityInterceptorCallback"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterActivityInterceptorCallback(I)V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityInterceptorCallbackRegistry;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_1

    .line 102
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback;->isValidMainlineOrderId(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 107
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 108
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->unregisterActivityStartInterceptor(I)V

    return-void

    .line 103
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "id is not in the mainline modules range, please useActivityTaskManagerInternal.unregisterActivityStartInterceptor(OrderedId) instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system server can register ActivityInterceptorCallback"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
