.class public final Lcom/android/server/pm/CrossProfileDomainInfo;
.super Ljava/lang/Object;
.source "CrossProfileDomainInfo.java"


# instance fields
.field public mHighestApprovalLevel:I

.field public final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field public final mTargetUserId:I


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;II)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 33
    iput p2, p0, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    .line 34
    iput p3, p0, Lcom/android/server/pm/CrossProfileDomainInfo;->mTargetUserId:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrossProfileDomainInfo{resolveInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", highestApprovalLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetUserId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/CrossProfileDomainInfo;->mTargetUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
