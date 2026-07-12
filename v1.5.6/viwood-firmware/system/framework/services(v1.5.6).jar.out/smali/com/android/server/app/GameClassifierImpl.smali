.class public final Lcom/android/server/app/GameClassifierImpl;
.super Ljava/lang/Object;
.source "GameClassifierImpl.java"

# interfaces
.implements Lcom/android/server/app/GameClassifier;


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/app/GameClassifierImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public isGame(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 1

    const/4 v0, 0x0

    .line 38
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameClassifierImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 42
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 39
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method
