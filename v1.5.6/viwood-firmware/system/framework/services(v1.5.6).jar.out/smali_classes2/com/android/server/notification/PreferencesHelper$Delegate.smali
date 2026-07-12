.class public Lcom/android/server/notification/PreferencesHelper$Delegate;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"


# instance fields
.field public mEnabled:Z

.field public final mPkg:Ljava/lang/String;

.field public final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 3389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3390
    iput-object p1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    .line 3391
    iput p2, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    .line 3392
    iput-boolean p3, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public isAllowed(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 3399
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    if-ne p2, p1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method
