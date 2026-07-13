.class public Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"


# instance fields
.field public installerPackageName:Ljava/lang/String;

.field public sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

.field public stagedReadyTimeoutMs:J

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3429
    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    const-wide/32 v0, 0xea60

    .line 3430
    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->stagedReadyTimeoutMs:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;-><init>()V

    return-void
.end method
