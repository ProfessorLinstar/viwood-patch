.class public Lcom/android/server/notification/NASLearnMoreActivity$1;
.super Ljava/lang/Object;
.source "NASLearnMoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NASLearnMoreActivity;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NASLearnMoreActivity;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/server/notification/NASLearnMoreActivity$1;->this$0:Lcom/android/server/notification/NASLearnMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/server/notification/NASLearnMoreActivity$1;->this$0:Lcom/android/server/notification/NASLearnMoreActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
