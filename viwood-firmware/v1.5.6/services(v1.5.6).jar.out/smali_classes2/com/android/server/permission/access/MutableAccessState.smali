.class public final Lcom/android/server/permission/access/MutableAccessState;
.super Lcom/android/server/permission/access/AccessState;
.source "AccessState.kt"


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 61
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v1, Lcom/android/server/permission/access/MutableExternalState;

    invoke-direct {v1}, Lcom/android/server/permission/access/MutableExternalState;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 62
    new-instance v1, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v2, Lcom/android/server/permission/access/MutableSystemState;

    invoke-direct {v2}, Lcom/android/server/permission/access/MutableSystemState;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 63
    new-instance v2, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v4}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v2, v3}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 60
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/permission/access/MutableAccessState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/AccessState;)V
    .locals 2

    .line 69
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getExternalStateReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getSystemStateReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStatesReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p1

    .line 68
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/permission/access/MutableAccessState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/permission/access/AccessState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static synthetic mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 76
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState(I)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 81
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 84
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getExternalStateReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/MutableExternalState;

    return-object p0
.end method

.method public final mutateSystemState(I)Lcom/android/server/permission/access/MutableSystemState;
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemStateReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/MutableSystemState;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/MutableSystemState;->requestWriteMode(I)V

    return-object p0
.end method

.method public final mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStatesNoWrite()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final mutateUserStateAt(II)Lcom/android/server/permission/access/MutableUserState;
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStatesNoWrite()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutateAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    return-object p0
.end method

.method public final mutateUserStatesNoWrite()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStatesReference$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    return-object p0
.end method
