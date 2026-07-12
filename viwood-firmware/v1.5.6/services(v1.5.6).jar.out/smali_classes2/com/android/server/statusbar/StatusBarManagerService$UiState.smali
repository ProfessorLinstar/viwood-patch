.class public Lcom/android/server/statusbar/StatusBarManagerService$UiState;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"


# instance fields
.field public mAppearance:I

.field public mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field public mBehavior:I

.field public mDisabled1:I

.field public mDisabled2:I

.field public mImeBackDisposition:I

.field public mImeWindowVis:I

.field public mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

.field public mNavbarColorManagedByIme:Z

.field public mPackageName:Ljava/lang/String;

.field public mRequestedVisibleTypes:I

.field public mShowImeSwitcher:Z

.field public mTransientBarTypes:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAppearance(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppearanceRegions(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)[Lcom/android/internal/view/AppearanceRegion;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBehavior(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mBehavior:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImeBackDisposition(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImeWindowVis(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLetterboxDetails(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)[Lcom/android/internal/statusbar/LetterboxDetails;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNavbarColorManagedByIme(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestedVisibleTypes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibleTypes:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShowImeSwitcher(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTransientBarTypes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mclearTransient(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->clearTransient(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisableEquals(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->disableEquals(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetDisabled1(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled1()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetDisabled2(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled2()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetBarAttributes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setBarAttributes(I[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisabled(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setDisabled(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetImeWindowState(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setImeWindowState(IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowTransient(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->showTransient(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1685
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    .line 1686
    new-array v1, v0, [Lcom/android/internal/view/AppearanceRegion;

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 1688
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 1690
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    iput v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibleTypes:I

    .line 1691
    const-string/jumbo v1, "none"

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    .line 1692
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 1693
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 1694
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 1696
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 1698
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    .line 1699
    new-array v0, v0, [Lcom/android/internal/statusbar/LetterboxDetails;

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearTransient(I)V
    .locals 1

    .line 1720
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    return-void
.end method

.method public final disableEquals(II)Z
    .locals 1

    .line 1737
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    if-ne v0, p1, :cond_0

    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getDisabled1()I
    .locals 0

    .line 1724
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    return p0
.end method

.method public final getDisabled2()I
    .locals 0

    .line 1728
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    return p0
.end method

.method public final setBarAttributes(I[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .locals 0

    .line 1706
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    .line 1707
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 1708
    iput-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 1709
    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mBehavior:I

    .line 1710
    iput p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibleTypes:I

    .line 1711
    iput-object p6, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    .line 1712
    iput-object p7, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    return-void
.end method

.method public final setDisabled(II)V
    .locals 0

    .line 1732
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 1733
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    return-void
.end method

.method public final setImeWindowState(IIZ)V
    .locals 0

    .line 1743
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 1744
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 1745
    iput-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    return-void
.end method

.method public final showTransient(I)V
    .locals 1

    .line 1716
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    return-void
.end method
