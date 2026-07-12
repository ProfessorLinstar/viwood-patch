.class public final Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;
.super Landroid/service/contentcapture/IContentProtectionAllowlistCallback$Stub;
.source "ContentProtectionAllowlistManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;


# direct methods
.method public static synthetic $r8$lambda$ajOm1tW_3f7Iz-_ZsWNp4-bD5T0(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;->lambda$setAllowlist$0(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;->this$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    invoke-direct {p0}, Landroid/service/contentcapture/IContentProtectionAllowlistCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;Lcom/android/server/contentprotection/ContentProtectionAllowlistManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;-><init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$setAllowlist$0(Ljava/util/List;)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;->this$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    invoke-static {p0, p1}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->-$$Nest$mhandleUpdateAllowlistResponse(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;Ljava/util/List;)V

    return-void
.end method

.method public setAllowlist(Ljava/util/List;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;->this$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    invoke-static {v0}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->-$$Nest$fgetmHandler(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
