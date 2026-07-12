.class public Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;
.super Ljava/lang/Object;
.source "DisassociationProcessor.java"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/association/DisassociationProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/association/DisassociationProcessor;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/companion/association/DisassociationProcessor;Lcom/android/server/companion/association/DisassociationProcessor-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;)V

    return-void
.end method


# virtual methods
.method public onUidImportance(II)V
    .locals 6

    const/16 v0, 0x64

    if-gt p2, v0, :cond_0

    goto :goto_2

    .line 296
    :cond_0
    iget-object p2, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-static {p2}, Lcom/android/server/companion/association/DisassociationProcessor;->-$$Nest$fgetmPackageManager(Lcom/android/server/companion/association/DisassociationProcessor;)Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 297
    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_2

    .line 302
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 303
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    .line 304
    iget-object v3, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-static {v3}, Lcom/android/server/companion/association/DisassociationProcessor;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/association/DisassociationProcessor;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/android/server/companion/association/AssociationStore;->getRevokedAssociations(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 306
    iget-object v4, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    const-string/jumbo v5, "revoked"

    invoke-virtual {v4, v3, v5}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_3
    iget-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-static {p1}, Lcom/android/server/companion/association/DisassociationProcessor;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/association/DisassociationProcessor;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/companion/association/AssociationStore;->getRevokedAssociations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 311
    iget-object p0, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-static {p0}, Lcom/android/server/companion/association/DisassociationProcessor;->-$$Nest$mstopListening(Lcom/android/server/companion/association/DisassociationProcessor;)V

    :cond_4
    :goto_2
    return-void
.end method
