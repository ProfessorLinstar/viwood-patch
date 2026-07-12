.class public Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;
.super Landroid/hardware/SensorPrivacyManagerInternal;
.source "SensorPrivacyService.java"


# instance fields
.field public mAllUserListeners:Landroid/util/ArrayMap;

.field public mListeners:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;


# direct methods
.method public static synthetic $r8$lambda$6c5oG3NqTqZpXs8uPF7TL16NWZ0(Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;IZ)V
    .locals 0

    .line 1928
    invoke-interface {p0, p1, p2}, Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;->onSensorPrivacyChanged(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$7htxO0TQE822gNYNCZBrofa0MdU(Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;Z)V
    .locals 0

    .line 1941
    invoke-interface {p0, p1}, Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatch(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;IIZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->dispatch(IIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V
    .locals 0

    .line 1910
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-direct {p0}, Landroid/hardware/SensorPrivacyManagerInternal;-><init>()V

    .line 1912
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mListeners:Landroid/util/ArrayMap;

    .line 1914
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mAllUserListeners:Landroid/util/ArrayMap;

    .line 1917
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;Lcom/android/server/sensorprivacy/SensorPrivacyService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V

    return-void
.end method


# virtual methods
.method public addSensorPrivacyListener(IILandroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;)V
    .locals 3

    .line 1958
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1959
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mListeners:Landroid/util/ArrayMap;

    .line 1960
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 1962
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1963
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mListeners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1967
    :cond_0
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_1

    .line 1969
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 1970
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    :cond_1
    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1974
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addSensorPrivacyListenerForAllUsers(ILandroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;)V
    .locals 3

    .line 1980
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1981
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mAllUserListeners:Landroid/util/ArrayMap;

    .line 1982
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_0

    .line 1984
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1985
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mAllUserListeners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1988
    :cond_0
    :goto_0
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1989
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dispatch(IIZ)V
    .locals 7

    .line 1920
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1921
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mAllUserListeners:Landroid/util/ArrayMap;

    .line 1922
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v3, v2

    .line 1924
    :goto_0
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1926
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;

    .line 1927
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, p1, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;IZ)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1932
    :cond_0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mListeners:Landroid/util/ArrayMap;

    .line 1933
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_1

    .line 1936
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_1

    .line 1938
    :goto_1
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-ge v2, p1, :cond_1

    .line 1939
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;

    .line 1940
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;Z)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1945
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSensorPrivacyEnabled(II)Z
    .locals 1

    .line 1950
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object p0

    const/4 v0, 0x1

    .line 1951
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$misToggleSensorPrivacyEnabledInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;III)Z

    move-result p0

    return p0
.end method

.method public setPhysicalToggleSensorPrivacy(IIZ)V
    .locals 7

    .line 1994
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 1999
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p1

    :cond_0
    const/16 v0, -0x2710

    if-ne p1, v0, :cond_1

    .line 2000
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p1

    :cond_1
    move v3, p1

    const/4 v2, 0x2

    const/4 v4, 0x5

    move v5, p2

    move v6, p3

    .line 2002
    invoke-static/range {v1 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$msetToggleSensorPrivacyUnchecked(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIIZ)V

    if-nez v6, :cond_2

    const/4 v2, 0x1

    const/4 v4, 0x5

    .line 2006
    invoke-static/range {v1 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$msetToggleSensorPrivacyUnchecked(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIIZ)V

    :cond_2
    return-void
.end method
