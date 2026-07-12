.class public Lcom/android/server/pm/KeySetHandle;
.super Landroid/os/Binder;
.source "KeySetHandle.java"


# instance fields
.field public final mId:J

.field public mRefCount:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/android/server/pm/KeySetHandle;->mId:J

    const/4 p1, 0x1

    .line 27
    iput p1, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/android/server/pm/KeySetHandle;->mId:J

    .line 35
    iput p3, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return-void
.end method


# virtual methods
.method public decrRefCountLPw()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/android/server/pm/KeySetHandle;->mId:J

    return-wide v0
.end method

.method public getRefCountLPr()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return p0
.end method

.method public incrRefCountLPw()V
    .locals 1

    .line 55
    iget v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return-void
.end method

.method public setRefCountLPw(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return-void
.end method
