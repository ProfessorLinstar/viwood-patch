.class public Lcom/android/server/companion/CompanionExemptionProcessor$1;
.super Ljava/lang/Object;
.source "CompanionExemptionProcessor.java"

# interfaces
.implements Lcom/android/server/companion/association/AssociationStore$OnChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/CompanionExemptionProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionExemptionProcessor;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/server/companion/CompanionExemptionProcessor$1;->this$0:Lcom/android/server/companion/CompanionExemptionProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .locals 0

    .line 83
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    .line 84
    iget-object p2, p0, Lcom/android/server/companion/CompanionExemptionProcessor$1;->this$0:Lcom/android/server/companion/CompanionExemptionProcessor;

    invoke-static {p2}, Lcom/android/server/companion/CompanionExemptionProcessor;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionExemptionProcessor;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object p2

    .line 85
    invoke-virtual {p2, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object p2

    .line 87
    iget-object p0, p0, Lcom/android/server/companion/CompanionExemptionProcessor$1;->this$0:Lcom/android/server/companion/CompanionExemptionProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionExemptionProcessor;->updateAtm(ILjava/util/List;)V

    return-void
.end method
