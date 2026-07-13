.class public Lcom/android/server/display/layout/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# instance fields
.field public final mDisplays:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public contains(Landroid/view/DisplayAddress;)Z
    .locals 0

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public createDefaultDisplayLocked(Landroid/view/DisplayAddress;Lcom/android/server/display/layout/DisplayIdProducer;)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 80
    const-string v4, ""

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZLjava/lang/String;Lcom/android/server/display/layout/DisplayIdProducer;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createDisplayLocked(Landroid/view/DisplayAddress;ZZLjava/lang/String;Lcom/android/server/display/layout/DisplayIdProducer;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object/from16 v7, p7

    .line 113
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/layout/Layout;->contains(Landroid/view/DisplayAddress;)Z

    move-result v0

    const-string v1, "Layout"

    if-eqz v0, :cond_0

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempting to add second definition for display-device: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring attempt to add a second default display: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_1
    const-string v0, ""

    if-nez p4, :cond_2

    move-object v4, v0

    goto :goto_0

    :cond_2
    move-object/from16 v4, p4

    :goto_0
    if-eqz p2, :cond_4

    .line 127
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 128
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Default display should own DEFAULT_DISPLAY_GROUP"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    if-eqz p2, :cond_6

    if-nez v7, :cond_5

    goto :goto_2

    .line 131
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Default display cannot have a lead display"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 133
    :cond_6
    :goto_2
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move-object/from16 v0, p5

    .line 141
    invoke-interface {v0, p2}, Lcom/android/server/display/layout/DisplayIdProducer;->getId(Z)I

    move-result v2

    .line 143
    new-instance v0, Lcom/android/server/display/layout/Layout$Display;

    const/4 v11, 0x0

    move-object v1, p1

    move v3, p3

    move/from16 v6, p6

    move-object/from16 v5, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v11}, Lcom/android/server/display/layout/Layout$Display;-><init>(Landroid/view/DisplayAddress;IZLjava/lang/String;Ljava/lang/String;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/layout/Layout-IA;)V

    .line 147
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 134
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Lead display address cannot be the same as display  address"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 59
    instance-of v0, p1, Lcom/android/server/display/layout/Layout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 63
    :cond_0
    check-cast p1, Lcom/android/server/display/layout/Layout;

    .line 64
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    iget-object p1, p1, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAt(I)Lcom/android/server/display/layout/Layout$Display;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/layout/Layout$Display;

    return-object p0
.end method

.method public getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;
    .locals 3

    const/4 v0, 0x0

    .line 229
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 230
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/layout/Layout$Display;

    .line 231
    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/view/DisplayAddress$Physical;->isPortMatch(Landroid/view/DisplayAddress;Landroid/view/DisplayAddress;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getById(I)Lcom/android/server/display/layout/Layout$Display;
    .locals 3

    const/4 v0, 0x0

    .line 213
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/layout/Layout$Display;

    .line 215
    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v2

    if-ne p1, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasCyclicLeadDisplay(Lcom/android/server/display/layout/Layout$Display;)Z
    .locals 2

    .line 258
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    :goto_0
    if-eqz p1, :cond_2

    .line 261
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 264
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {p1}, Lcom/android/server/display/layout/Layout$Display;->getLeadDisplayAddress()Landroid/view/DisplayAddress;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0
.end method

.method public postProcessLocked()V
    .locals 5

    const/4 v0, 0x0

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 169
    iget-object v1, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/layout/Layout$Display;

    .line 170
    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 171
    invoke-static {v1, v3}, Lcom/android/server/display/layout/Layout$Display;->-$$Nest$msetLeadDisplayId(Lcom/android/server/display/layout/Layout$Display;I)V

    goto :goto_1

    .line 174
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout$Display;->getLeadDisplayAddress()Landroid/view/DisplayAddress;

    move-result-object v2

    if-nez v2, :cond_1

    .line 176
    invoke-static {v1, v3}, Lcom/android/server/display/layout/Layout$Display;->-$$Nest$msetLeadDisplayId(Lcom/android/server/display/layout/Layout$Display;I)V

    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 184
    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout$Display;->getDisplayGroupName()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-virtual {v3}, Lcom/android/server/display/layout/Layout$Display;->getDisplayGroupName()Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/server/display/layout/Layout;->hasCyclicLeadDisplay(Lcom/android/server/display/layout/Layout$Display;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 193
    invoke-virtual {v3}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/layout/Layout$Display;->-$$Nest$msetLeadDisplayId(Lcom/android/server/display/layout/Layout$Display;I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") has a cyclic lead display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lead display("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") should be in the same display group of the display("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 181
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find a lead display whose address is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void
.end method

.method public removeDisplayLocked(I)V
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public size()I
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
