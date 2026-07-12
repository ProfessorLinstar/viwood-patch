.class public Lcom/android/server/om/OverlayReferenceMapper$1;
.super Ljava/lang/Object;
.source "OverlayReferenceMapper.java"

# interfaces
.implements Lcom/android/server/om/OverlayReferenceMapper$Provider;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayReferenceMapper;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActorPkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 114
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getNamedActors()Ljava/util/Map;

    move-result-object p0

    .line 118
    invoke-static {p1, p0}, Lcom/android/server/om/OverlayActorEnforcer;->getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object p0

    .line 119
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTargetToOverlayables(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/Pair;
    .locals 1

    .line 125
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object p0

    .line 126
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 130
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
