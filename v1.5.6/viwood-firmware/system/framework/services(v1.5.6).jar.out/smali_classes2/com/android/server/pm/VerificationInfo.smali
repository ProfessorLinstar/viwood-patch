.class public final Lcom/android/server/pm/VerificationInfo;
.super Ljava/lang/Object;
.source "VerificationInfo.java"


# instance fields
.field public final mInstallerUid:I

.field public final mOriginatingUid:I

.field public final mOriginatingUri:Landroid/net/Uri;

.field public final mReferrer:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;II)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUri:Landroid/net/Uri;

    .line 36
    iput-object p2, p0, Lcom/android/server/pm/VerificationInfo;->mReferrer:Landroid/net/Uri;

    .line 37
    iput p3, p0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUid:I

    .line 38
    iput p4, p0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    return-void
.end method
