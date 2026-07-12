.class public Lcom/android/server/am/ComponentAliasResolver$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "ComponentAliasResolver.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ComponentAliasResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ComponentAliasResolver;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/server/am/ComponentAliasResolver$1;->this$0:Lcom/android/server/am/ComponentAliasResolver;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver$1;->this$0:Lcom/android/server/am/ComponentAliasResolver;

    invoke-static {p0}, Lcom/android/server/am/ComponentAliasResolver;->-$$Nest$mrefresh(Lcom/android/server/am/ComponentAliasResolver;)V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver$1;->this$0:Lcom/android/server/am/ComponentAliasResolver;

    invoke-static {p0}, Lcom/android/server/am/ComponentAliasResolver;->-$$Nest$mrefresh(Lcom/android/server/am/ComponentAliasResolver;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver$1;->this$0:Lcom/android/server/am/ComponentAliasResolver;

    invoke-static {p0}, Lcom/android/server/am/ComponentAliasResolver;->-$$Nest$mrefresh(Lcom/android/server/am/ComponentAliasResolver;)V

    return-void
.end method
