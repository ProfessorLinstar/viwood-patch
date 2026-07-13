.class public Lcom/android/server/compat/overrides/ChangeOverrides$Validated;
.super Ljava/lang/Object;
.source "ChangeOverrides.java"


# instance fields
.field public overrideValue:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/ChangeOverrides$Validated;
    .locals 4

    .line 15
    new-instance v0, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    invoke-direct {v0}, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;-><init>()V

    .line 17
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 19
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    .line 21
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 23
    const-string/jumbo v2, "override-value"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    invoke-static {p0}, Lcom/android/server/compat/overrides/OverrideValue;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/OverrideValue;

    move-result-object v1

    .line 25
    invoke-virtual {v0}, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;->getOverrideValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p0}, Lcom/android/server/compat/overrides/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    return-object v0

    .line 31
    :cond_3
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "ChangeOverrides.Validated is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getOverrideValue()Ljava/util/List;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;->overrideValue:Ljava/util/List;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;->overrideValue:Ljava/util/List;

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;->overrideValue:Ljava/util/List;

    return-object p0
.end method

.method public write(Lcom/android/server/compat/overrides/XmlWriter;Ljava/lang/String;)V
    .locals 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 38
    const-string v0, ">\n"

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/XmlWriter;->increaseIndent()V

    .line 40
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;->getOverrideValue()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/overrides/OverrideValue;

    .line 41
    const-string/jumbo v2, "override-value"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/compat/overrides/OverrideValue;->write(Lcom/android/server/compat/overrides/XmlWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/XmlWriter;->decreaseIndent()V

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    return-void
.end method
