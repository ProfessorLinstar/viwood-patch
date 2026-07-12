.class public Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;
.super Ljava/lang/Object;
.source "SensitiveContentPackages.java"


# instance fields
.field public final mPkg:Ljava/lang/String;

.field public final mUid:I

.field public final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPkg(Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUid(Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowToken(Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;)Landroid/os/IBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;-><init>(Ljava/lang/String;ILandroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    .line 139
    iput p2, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    .line 140
    iput-object p3, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 146
    :cond_0
    instance-of v1, p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 147
    :cond_1
    check-cast p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    .line 148
    iget v1, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    iget v3, p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    iget-object p1, p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    .line 149
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getUid()I
    .locals 0

    .line 162
    iget p0, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    return p0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " windowToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
