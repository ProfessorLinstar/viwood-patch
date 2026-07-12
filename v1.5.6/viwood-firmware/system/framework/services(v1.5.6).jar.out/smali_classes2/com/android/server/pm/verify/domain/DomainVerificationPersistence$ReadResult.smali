.class public Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;
.super Ljava/lang/Object;
.source "DomainVerificationPersistence.java"


# instance fields
.field public final active:Landroid/util/ArrayMap;

.field public final restored:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 0

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;->active:Landroid/util/ArrayMap;

    .line 444
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;->restored:Landroid/util/ArrayMap;

    return-void
.end method
