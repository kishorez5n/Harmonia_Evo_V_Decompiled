.class public Lcom/htc/music/widget/GroupListView$ExpandableListContextMenuInfo;
.super Ljava/lang/Object;
.source "GroupListView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/GroupListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandableListContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public packedPosition:J

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/music/widget/GroupListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    iput-wide p2, p0, Lcom/htc/music/widget/GroupListView$ExpandableListContextMenuInfo;->packedPosition:J

    iput-wide p4, p0, Lcom/htc/music/widget/GroupListView$ExpandableListContextMenuInfo;->id:J

    return-void
.end method
