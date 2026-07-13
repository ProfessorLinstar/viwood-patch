.class public Lcom/android/server/slice/SlicePermissionManager$PkgUser;
.super Ljava/lang/Object;
.source "SlicePermissionManager.java"


# instance fields
.field public final mPkg:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPkg(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    :try_start_0
    const-string v0, "@"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 435
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    const/4 v0, 0x1

    .line 436
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    invoke-virtual {p0}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->enforceValidPackage()V

    return-void

    :catch_0
    move-exception p0

    .line 438
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    .line 428
    iput p2, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    .line 429
    invoke-virtual {p0}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->enforceValidPackage()V

    return-void
.end method


# virtual methods
.method public final enforceValidPackage()V
    .locals 2

    .line 444
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    .line 448
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 449
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 468
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 469
    :cond_1
    check-cast p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 470
    iget-object v0, p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    iget p0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    if-ne p1, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public getPkg()Ljava/lang/String;
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 458
    iget p0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget p0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s@%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
