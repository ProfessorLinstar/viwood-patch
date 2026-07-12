.class public final Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "ContentProtectionAllowlistManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;


# direct methods
.method public constructor <init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionPackageMonitor;->this$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;Lcom/android/server/contentprotection/ContentProtectionAllowlistManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionPackageMonitor;-><init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;)V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionPackageMonitor;->this$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    invoke-static {p0}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->-$$Nest$mhandlePackagesChanged(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;)V

    return-void
.end method
