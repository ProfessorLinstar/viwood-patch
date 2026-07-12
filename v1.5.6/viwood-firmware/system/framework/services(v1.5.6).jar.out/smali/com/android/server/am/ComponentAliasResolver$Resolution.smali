.class public Lcom/android/server/am/ComponentAliasResolver$Resolution;
.super Ljava/lang/Object;
.source "ComponentAliasResolver.java"


# instance fields
.field public final resolved:Ljava/lang/Object;

.field public final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p1, p0, Lcom/android/server/am/ComponentAliasResolver$Resolution;->source:Ljava/lang/Object;

    .line 379
    iput-object p2, p0, Lcom/android/server/am/ComponentAliasResolver$Resolution;->resolved:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/Object;
    .locals 1

    .line 389
    invoke-virtual {p0}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver$Resolution;->source:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver$Resolution;->resolved:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAlias()Z
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver$Resolution;->resolved:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
