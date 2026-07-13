.class public Lcom/android/server/companion/devicepresence/CompanionAppBinder;
.super Ljava/lang/Object;
.source "CompanionAppBinder.java"


# instance fields
.field public final mBoundCompanionApplications:Ljava/util/Map;

.field public final mCompanionServicesRegister:Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;

.field public final mContext:Landroid/content/Context;

.field public final mScheduledForRebindingCompanionApplications:Ljava/util/Set;


# direct methods
.method public static synthetic $r8$lambda$aDJoFe7YIlDVChwfWHPOUufycQA(Lcom/android/server/companion/devicepresence/CompanionAppBinder;ILjava/lang/String;Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->lambda$scheduleRebinding$0(ILjava/lang/String;Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/companion/devicepresence/CompanionAppBinder;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mContext:Landroid/content/Context;

    .line 90
    new-instance p1, Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;-><init>(Lcom/android/server/companion/devicepresence/CompanionAppBinder;Lcom/android/server/companion/devicepresence/CompanionAppBinder-IA;)V

    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mCompanionServicesRegister:Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;

    .line 91
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 92
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public bindCompanionApp(ILjava/lang/String;ZLcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;)V
    .locals 8

    .line 109
    const-string v0, "CDM_CompanionAppBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding user=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], package=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], isSelfManaged=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mCompanionServicesRegister:Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;

    .line 113
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;->forPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string p0, "CDM_CompanionAppBinder"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can not bind companion applications u"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": eligible CompanionDeviceService not found.\nA CompanionDeviceService should declare an intent-filter for \"android.companion.CompanionDeviceService\" action and require \"android.permission.BIND_COMPANION_DEVICE_SERVICE\" permission."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 123
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    monitor-enter v2

    .line 125
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    new-instance v4, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    const-string p0, "CDM_CompanionAppBinder"

    const-string p1, "The package is ALREADY bound."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    .line 130
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    if-nez v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v3

    .line 132
    :goto_1
    iget-object v6, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mContext:Landroid/content/Context;

    .line 133
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 132
    invoke-static {v6, p1, v7, p3, v5}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->newInstance(Landroid/content/Context;ILandroid/content/ComponentName;ZZ)Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    :cond_3
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    new-instance p3, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    move p1, v3

    :goto_2
    if-ge p1, p0, :cond_4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    check-cast p2, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    .line 141
    invoke-virtual {p2, p4}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->setListener(Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;)V

    goto :goto_2

    .line 145
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_3
    if-ge v3, p0, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    check-cast p1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    .line 146
    invoke-virtual {p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    goto :goto_3

    :cond_5
    return-void

    .line 137
    :goto_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 258
    const-string v0, "Companion Device Application Controller: \n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 260
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    monitor-enter v0

    .line 261
    :try_start_0
    const-string v1, "  Bound Companion Applications: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 262
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const-string v1, "<empty>\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 265
    :cond_0
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 267
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 268
    const-string v3, "<u"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    .line 269
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 270
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    .line 271
    const-string v4, ", isPrimary="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    .line 272
    invoke-virtual {v3}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->isPrimary()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 276
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    const-string v0, "  Companion Applications Scheduled For Rebinding: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 279
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    monitor-enter v1

    .line 280
    :try_start_1
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    const-string p0, "<empty>\n"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 283
    :cond_3
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 284
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 285
    const-string v2, "<u"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    .line 286
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_2

    .line 289
    :cond_4
    :goto_3
    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 276
    :goto_5
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/devicepresence/CompanionServiceConnector;
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 298
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 299
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 298
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isCompanionApplicationBound(ILjava/lang/String;)Z
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 182
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isRebindingCompanionApplicationScheduled(ILjava/lang/String;)Z
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    monitor-enter v0

    .line 227
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    new-instance v1, Landroid/util/Pair;

    .line 228
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 229
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$scheduleRebinding$0(ILjava/lang/String;Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V
    .locals 0

    .line 219
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->onRebindingCompanionApplicationTimeout(ILjava/lang/String;Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V

    return-void
.end method

.method public onPackageChanged(I)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mCompanionServicesRegister:Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;->invalidate(I)V

    return-void
.end method

.method public final onRebindingCompanionApplicationTimeout(ILjava/lang/String;Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V
    .locals 5

    .line 236
    invoke-virtual {p3}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 241
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 244
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    monitor-enter v1

    .line 247
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 248
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 244
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 251
    :cond_1
    :goto_2
    invoke-virtual {p3}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public removePackage(ILjava/lang/String;)V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 193
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    monitor-enter v1

    .line 194
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 195
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 191
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public scheduleRebinding(ILjava/lang/String;Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V
    .locals 4

    .line 203
    const-string v0, "CDM_CompanionAppBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleRebinding() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->isRebindingCompanionApplicationScheduled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string p0, "CDM_CompanionAppBinder"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CompanionApplication rebinding has been scheduled, skipping "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p3}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 218
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/devicepresence/CompanionAppBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/companion/devicepresence/CompanionAppBinder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/devicepresence/CompanionAppBinder;ILjava/lang/String;Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V

    const-wide/16 p0, 0x2710

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unbindCompanionApp(ILjava/lang/String;)V
    .locals 4

    .line 154
    const-string v0, "CDM_CompanionAppBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbinding user=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], package=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    monitor-enter v2

    .line 163
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 164
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 167
    const-string p0, "CDM_CompanionAppBinder"

    const-string p1, "The package is not bound."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 171
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    .line 172
    invoke-virtual {p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->postUnbind()V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 164
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 160
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
