.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;

.field public final synthetic val$idx:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;

    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab$1;->val$idx:I

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab$1;->val$idx:I

    .line 2
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->currentPageIdx:I

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;

    .line 4
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->updateList()V

    return-void
.end method
