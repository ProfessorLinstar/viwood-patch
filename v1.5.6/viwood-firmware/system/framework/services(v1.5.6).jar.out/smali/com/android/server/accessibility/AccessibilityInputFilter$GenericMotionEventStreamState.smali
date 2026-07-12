.class public Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;
.super Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.source "AccessibilityInputFilter.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .locals 0

    .line 1127
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityInputFilter;Lcom/android/server/accessibility/AccessibilityInputFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    return-void
.end method


# virtual methods
.method public shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1130
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$GenericMotionEventStreamState;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->-$$Nest$manyServiceWantsGenericMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public shouldProcessScroll()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
