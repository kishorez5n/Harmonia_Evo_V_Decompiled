.class public Lcom/google/android/common/html/parser/HtmlTree;
.super Ljava/lang/Object;
.source "HtmlTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/html/parser/HtmlTree$2;,
        Lcom/google/android/common/html/parser/HtmlTree$DefaultPlainTextConverter;,
        Lcom/google/android/common/html/parser/HtmlTree$PlainTextPrinter;,
        Lcom/google/android/common/html/parser/HtmlTree$Block;,
        Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverter;,
        Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONVERTER_FACTORY:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final begins:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private converterFactory:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;

.field private final ends:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation
.end field

.field private parent:I

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/common/html/parser/HtmlTree$1;

    invoke-direct {v0}, Lcom/google/android/common/html/parser/HtmlTree$1;-><init>()V

    sput-object v0, Lcom/google/android/common/html/parser/HtmlTree;->DEFAULT_CONVERTER_FACTORY:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;

    .line 104
    const-class v0, Lcom/google/android/common/html/parser/HtmlTree;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/common/html/parser/HtmlTree;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->begins:Ljava/util/Stack;

    .line 88
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    .line 99
    sget-object v0, Lcom/google/android/common/html/parser/HtmlTree;->DEFAULT_CONVERTER_FACTORY:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->converterFactory:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;

    .line 110
    return-void
.end method

.method private addNode(Lcom/google/android/common/html/parser/HtmlDocument$Node;II)V
    .locals 2
    .parameter "n"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 942
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->begins:Ljava/util/Stack;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 944
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 945
    return-void
.end method


# virtual methods
.method addEndTag(Lcom/google/android/common/html/parser/HtmlDocument$EndTag;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 913
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 914
    .local v0, nodenum:I
    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->parent:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/common/html/parser/HtmlTree;->addNode(Lcom/google/android/common/html/parser/HtmlDocument$Node;II)V

    .line 916
    iget v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->parent:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 917
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    iget v2, p0, Lcom/google/android/common/html/parser/HtmlTree;->parent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 921
    :cond_0
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->parent:I

    .line 922
    return-void
.end method

.method addSingularTag(Lcom/google/android/common/html/parser/HtmlDocument$Tag;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 926
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 927
    .local v0, nodenum:I
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/common/html/parser/HtmlTree;->addNode(Lcom/google/android/common/html/parser/HtmlDocument$Node;II)V

    .line 928
    return-void
.end method

.method addStartTag(Lcom/google/android/common/html/parser/HtmlDocument$Tag;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 902
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 903
    .local v0, nodenum:I
    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/common/html/parser/HtmlTree;->addNode(Lcom/google/android/common/html/parser/HtmlDocument$Node;II)V

    .line 905
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    iget v2, p0, Lcom/google/android/common/html/parser/HtmlTree;->parent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 906
    iput v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->parent:I

    .line 907
    return-void
.end method

.method addText(Lcom/google/android/common/html/parser/HtmlDocument$Text;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 935
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 936
    .local v0, nodenum:I
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/common/html/parser/HtmlTree;->addNode(Lcom/google/android/common/html/parser/HtmlDocument$Node;II)V

    .line 937
    return-void
.end method

.method finish()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 894
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 895
    iget v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->parent:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 896
    return-void

    :cond_0
    move v0, v2

    .line 894
    goto :goto_0

    :cond_1
    move v1, v2

    .line 895
    goto :goto_1
.end method

.method start()V
    .locals 1

    .prologue
    .line 888
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    .line 889
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/common/html/parser/HtmlTree;->parent:I

    .line 890
    return-void
.end method
