.class public Lcom/android/server/om/OverlayActorEnforcer;
.super Ljava/lang/Object;
.source "OverlayActorEnforcer.java"


# instance fields
.field public final mPackageManager:Lcom/android/server/om/PackageManagerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/om/PackageManagerHelper;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    return-void
.end method

.method public static getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;
    .locals 4

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->NO_NAMED_ACTORS:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 56
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 60
    const-string/jumbo v3, "overlay"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 66
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 67
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_NAMESPACE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p1, 0x0

    .line 70
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 71
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 73
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 76
    :cond_3
    sget-object p1, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 61
    :cond_4
    :goto_0
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->INVALID_OVERLAYABLE_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public enforceActor(Landroid/content/om/OverlayInfo;Ljava/lang/String;II)V
    .locals 3

    .line 85
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/om/OverlayActorEnforcer;->isAllowedActor(Ljava/lang/String;Landroid/content/om/OverlayInfo;II)Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    move-result-object p0

    .line 86
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    if-ne p0, v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p1, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is not allowed to call "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, ""

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " because "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "OverlayManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAllowedActor(Ljava/lang/String;Landroid/content/om/OverlayInfo;II)Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    .locals 3

    if-eqz p3, :cond_e

    const/16 v0, 0x3e8

    if-eq p3, v0, :cond_e

    .line 113
    iget-object v0, p2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v1, v0, p4}, Lcom/android/server/om/PackageManagerHelper;->getPackageStateForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 115
    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    .line 117
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->TARGET_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 120
    :cond_1
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v1, p3}, Lcom/android/server/om/PackageManagerHelper;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    .line 125
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->NO_PACKAGES_FOR_UID:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 130
    :cond_3
    invoke-static {p3, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 134
    :cond_4
    iget-object p2, p2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    .line 136
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "android.permission.CHANGE_OVERLAY_PACKAGES"

    if-eqz v1, :cond_6

    .line 138
    :try_start_0
    iget-object p2, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {p2, v0, p4}, Lcom/android/server/om/PackageManagerHelper;->doesTargetDefineOverlayable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 139
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_TARGET_OVERLAYABLE_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    .line 143
    :cond_5
    :try_start_1
    iget-object p0, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {p0, v2, p1}, Lcom/android/server/om/PackageManagerHelper;->enforcePermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 149
    :catch_0
    :try_start_2
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_LEGACY_PERMISSION:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    .line 153
    :catch_1
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ERROR_READING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 159
    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v1, v0, p2, p4}, Lcom/android/server/om/PackageManagerHelper;->getOverlayableForTarget(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/om/OverlayableInfo;

    move-result-object p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-nez p2, :cond_7

    .line 166
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 169
    :cond_7
    iget-object p2, p2, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    .line 170
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 173
    :try_start_4
    iget-object p0, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {p0, v2, p1}, Lcom/android/server/om/PackageManagerHelper;->enforcePermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    return-object p0

    .line 179
    :catch_2
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_LEGACY_PERMISSION:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 183
    :cond_8
    iget-object p1, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {p1}, Lcom/android/server/om/PackageManagerHelper;->getNamedActors()Ljava/util/Map;

    move-result-object p1

    .line 184
    invoke-static {p2, p1}, Lcom/android/server/om/OverlayActorEnforcer;->getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object p1

    .line 185
    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 186
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    if-eq p2, v0, :cond_9

    return-object p2

    .line 190
    :cond_9
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 191
    iget-object p0, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {p0, p1, p4}, Lcom/android/server/om/PackageManagerHelper;->getPackageStateForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 192
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p2

    if-nez p2, :cond_a

    goto :goto_1

    .line 197
    :cond_a
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p0

    if-nez p0, :cond_b

    .line 198
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ACTOR_NOT_PREINSTALLED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 201
    :cond_b
    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    return-object v0

    .line 205
    :cond_c
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->INVALID_ACTOR:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 193
    :cond_d
    :goto_1
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ACTOR_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 162
    :catch_3
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->UNABLE_TO_GET_TARGET_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 110
    :cond_e
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0
.end method
