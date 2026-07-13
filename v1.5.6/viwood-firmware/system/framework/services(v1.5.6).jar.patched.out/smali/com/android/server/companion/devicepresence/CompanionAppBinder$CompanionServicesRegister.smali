.class public Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;
.super Lcom/android/internal/infra/PerUser;
.source "CompanionAppBinder.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/devicepresence/CompanionAppBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/devicepresence/CompanionAppBinder;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;->this$0:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-direct {p0}, Lcom/android/internal/infra/PerUser;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/companion/devicepresence/CompanionAppBinder;Lcom/android/server/companion/devicepresence/CompanionAppBinder-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;-><init>(Lcom/android/server/companion/devicepresence/CompanionAppBinder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(I)Ljava/lang/Object;
    .locals 0

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;->create(I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final create(I)Ljava/util/Map;
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;->this$0:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-static {p0}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->-$$Nest$fgetmContext(Lcom/android/server/companion/devicepresence/CompanionAppBinder;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/companion/utils/PackageUtils;->getCompanionServicesForUser(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized forPackage(ILjava/lang/String;)Ljava/util/List;
    .locals 1

    monitor-enter p0

    .line 313
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;->forUser(I)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic forUser(I)Ljava/lang/Object;
    .locals 0

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;->forUser(I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized forUser(I)Ljava/util/Map;
    .locals 0

    monitor-enter p0

    .line 307
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/internal/infra/PerUser;->forUser(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized invalidate(I)V
    .locals 0

    monitor-enter p0

    .line 317
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/PerUser;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
