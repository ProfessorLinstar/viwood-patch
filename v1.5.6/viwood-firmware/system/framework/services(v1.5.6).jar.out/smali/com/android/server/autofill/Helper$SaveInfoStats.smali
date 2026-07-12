.class public Lcom/android/server/autofill/Helper$SaveInfoStats;
.super Ljava/lang/Object;
.source "Helper.java"


# instance fields
.field public saveDataTypeCount:I

.field public saveInfoCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput p1, p0, Lcom/android/server/autofill/Helper$SaveInfoStats;->saveInfoCount:I

    .line 457
    iput p2, p0, Lcom/android/server/autofill/Helper$SaveInfoStats;->saveDataTypeCount:I

    return-void
.end method
