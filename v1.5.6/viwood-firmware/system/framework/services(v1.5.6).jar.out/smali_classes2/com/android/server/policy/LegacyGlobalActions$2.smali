.class public Lcom/android/server/policy/LegacyGlobalActions$2;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$2;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$2;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmAdapter(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object p0

    .line 343
    instance-of p1, p0, Lcom/android/internal/globalactions/LongPressAction;

    if-eqz p1, :cond_0

    .line 344
    check-cast p0, Lcom/android/internal/globalactions/LongPressAction;

    invoke-interface {p0}, Lcom/android/internal/globalactions/LongPressAction;->onLongPress()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
