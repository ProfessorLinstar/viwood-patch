.class public Lcom/android/server/companion/association/Associations;
.super Ljava/lang/Object;
.source "Associations.java"


# instance fields
.field public mAssociations:Ljava/util/List;

.field public mMaxId:I

.field public mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/android/server/companion/association/Associations;->mVersion:I

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    .line 33
    iput v0, p0, Lcom/android/server/companion/association/Associations;->mMaxId:I

    return-void
.end method


# virtual methods
.method public addAssociation(Landroid/companion/AssociationInfo;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAssociations()Ljava/util/List;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    return-object p0
.end method

.method public getMaxId()I
    .locals 0

    .line 62
    iget p0, p0, Lcom/android/server/companion/association/Associations;->mMaxId:I

    return p0
.end method

.method public getVersion()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/server/companion/association/Associations;->mVersion:I

    return p0
.end method

.method public setAssociations(Ljava/util/List;)V
    .locals 0

    .line 54
    invoke-static {p1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    return-void
.end method

.method public setMaxId(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/android/server/companion/association/Associations;->mMaxId:I

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/android/server/companion/association/Associations;->mVersion:I

    return-void
.end method
