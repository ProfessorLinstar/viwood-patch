.class public final Landroid/net/UidRangeParcel$Builder;
.super Ljava/lang/Object;
.source "UidRangeParcel.java"


# instance fields
.field private start:I

.field private stop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Landroid/net/UidRangeParcel$Builder;->start:I

    .line 22
    iput v0, p0, Landroid/net/UidRangeParcel$Builder;->stop:I

    return-void
.end method


# virtual methods
.method public build()Landroid/net/UidRangeParcel;
    .locals 2

    .line 28
    new-instance v0, Landroid/net/UidRangeParcel;

    iget v1, p0, Landroid/net/UidRangeParcel$Builder;->start:I

    iget p0, p0, Landroid/net/UidRangeParcel$Builder;->stop:I

    invoke-direct {v0, v1, p0}, Landroid/net/UidRangeParcel;-><init>(II)V

    return-object v0
.end method

.method public setStart(I)Landroid/net/UidRangeParcel$Builder;
    .locals 0

    .line 19
    iput p1, p0, Landroid/net/UidRangeParcel$Builder;->start:I

    return-object p0
.end method

.method public setStop(I)Landroid/net/UidRangeParcel$Builder;
    .locals 0

    .line 24
    iput p1, p0, Landroid/net/UidRangeParcel$Builder;->stop:I

    return-object p0
.end method
