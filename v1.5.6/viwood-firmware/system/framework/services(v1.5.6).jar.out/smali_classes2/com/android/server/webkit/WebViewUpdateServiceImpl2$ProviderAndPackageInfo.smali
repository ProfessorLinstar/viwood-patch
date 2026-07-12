.class public Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;
.super Ljava/lang/Object;
.source "WebViewUpdateServiceImpl2.java"


# instance fields
.field public final packageInfo:Landroid/content/pm/PackageInfo;

.field public final provider:Landroid/webkit/WebViewProviderInfo;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)V
    .locals 0

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    .line 451
    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method
