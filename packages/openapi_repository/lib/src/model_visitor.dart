// ignore_for_file: depend_on_referenced_packages

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';

class InlineClassVisitor extends SimpleElementVisitor {
  final fields = <FieldElement>[];
  final parameters = [];

  @override
  void visitFieldElement(FieldElement element) {
    parameters.add(element);
    if (element.displayName == 'results') fields.add(element);
  }
}

class TestVisitor extends RecursiveAstVisitor<void> {
  final arguments = [];

  @override
  void visitAdjacentStrings(AdjacentStrings node) {
    print('visitAdjacentStrings $node ');
    super.visitAdjacentStrings(node);
  }

  @override
  void visitAnnotation(Annotation node) {
    print('visitAnnotation $node ');
    super.visitAnnotation(node);
  }

  @override
  void visitArgumentList(ArgumentList node) {
    print('visitArgumentList $node ');

    final arguments = node.arguments;

    print('*' * 100);
    print(arguments.toString());
    if (arguments.first is InstanceCreationExpression) {
      print('#' * 50);
    }

    super.visitArgumentList(node);
  }

  @override
  void visitAsExpression(AsExpression node) {
    print('visitAsExpression $node ');
    super.visitAsExpression(node);
  }

  @override
  void visitAssertInitializer(AssertInitializer node) {
    print('visitAssertInitializer $node ');
    super.visitAssertInitializer(node);
  }

  @override
  void visitAssertStatement(AssertStatement node) {
    print('visitAssertStatement $node ');
    super.visitAssertStatement(node);
  }

  @override
  void visitAssignmentExpression(AssignmentExpression node) {
    print('visitAssignmentExpression $node ');
    super.visitAssignmentExpression(node);
  }

  @override
  void visitAwaitExpression(AwaitExpression node) {
    print('visitAwaitExpression $node ');
    super.visitAwaitExpression(node);
  }

  @override
  void visitBinaryExpression(BinaryExpression node) {
    print('visitBinaryExpression $node ');
    super.visitBinaryExpression(node);
  }

  @override
  void visitBlock(Block node) {
    print('visitBlock $node ');
    super.visitBlock(node);
  }

  @override
  void visitBlockFunctionBody(BlockFunctionBody node) {
    print('visitBlockFunctionBody $node ');
    super.visitBlockFunctionBody(node);
  }

  @override
  void visitBooleanLiteral(BooleanLiteral node) {
    print('visitBooleanLiteral $node ');
    super.visitBooleanLiteral(node);
  }

  @override
  void visitBreakStatement(BreakStatement node) {
    print('visitBreakStatement $node ');
    super.visitBreakStatement(node);
  }

  @override
  void visitCascadeExpression(CascadeExpression node) {
    print('visitCascadeExpression $node ');
    super.visitCascadeExpression(node);
  }

  @override
  void visitCatchClause(CatchClause node) {
    print('visitCatchClause $node ');
    super.visitCatchClause(node);
  }

  @override
  void visitClassDeclaration(ClassDeclaration node) {
    print('visitClassDeclaration $node ');
    super.visitClassDeclaration(node);
  }

  @override
  void visitClassTypeAlias(ClassTypeAlias node) {
    print('visitClassTypeAlias $node ');
    super.visitClassTypeAlias(node);
  }

  @override
  void visitComment(Comment node) {
    print('visitComment $node ');
    super.visitComment(node);
  }

  @override
  void visitCommentReference(CommentReference node) {
    print('visitCommentReference $node ');
    super.visitCommentReference(node);
  }

  @override
  void visitCompilationUnit(CompilationUnit node) {
    print('visitCompilationUnit $node ');
    super.visitCompilationUnit(node);
  }

  @override
  void visitConditionalExpression(ConditionalExpression node) {
    print('visitConditionalExpression $node ');
    super.visitConditionalExpression(node);
  }

  @override
  void visitConfiguration(Configuration node) {
    print('visitConfiguration $node ');
    super.visitConfiguration(node);
  }

  @override
  void visitConstructorDeclaration(ConstructorDeclaration node) {
    print('visitConstructorDeclaration $node ');
    super.visitConstructorDeclaration(node);
  }

  @override
  void visitConstructorFieldInitializer(ConstructorFieldInitializer node) {
    print('visitConstructorFieldInitializer $node ');
    super.visitConstructorFieldInitializer(node);
  }

  @override
  void visitConstructorName(ConstructorName node) {
    print('visitConstructorName $node ');
    super.visitConstructorName(node);
  }

  @override
  void visitConstructorReference(ConstructorReference node) {
    print('visitConstructorReference $node ');
    super.visitConstructorReference(node);
  }

  @override
  void visitConstructorSelector(ConstructorSelector node) {
    print('visitConstructorSelector $node ');
    super.visitConstructorSelector(node);
  }

  @override
  void visitContinueStatement(ContinueStatement node) {
    print('visitContinueStatement $node ');
    super.visitContinueStatement(node);
  }

  @override
  void visitDeclaredIdentifier(DeclaredIdentifier node) {
    print('visitDeclaredIdentifier $node ');
    super.visitDeclaredIdentifier(node);
  }

  @override
  void visitDefaultFormalParameter(DefaultFormalParameter node) {
    print('visitDefaultFormalParameter $node ');
    super.visitDefaultFormalParameter(node);
  }

  @override
  void visitDoStatement(DoStatement node) {
    print('visitDoStatement $node ');
    super.visitDoStatement(node);
  }

  @override
  void visitDottedName(DottedName node) {
    print('visitDottedName $node ');
    super.visitDottedName(node);
  }

  @override
  void visitDoubleLiteral(DoubleLiteral node) {
    print('visitDoubleLiteral $node ');
    super.visitDoubleLiteral(node);
  }

  @override
  void visitEmptyFunctionBody(EmptyFunctionBody node) {
    print('visitEmptyFunctionBody $node ');
    super.visitEmptyFunctionBody(node);
  }

  @override
  void visitEmptyStatement(EmptyStatement node) {
    print('visitEmptyStatement $node ');
    super.visitEmptyStatement(node);
  }

  @override
  void visitEnumConstantArguments(EnumConstantArguments node) {
    print('visitEnumConstantArguments $node ');
    super.visitEnumConstantArguments(node);
  }

  @override
  void visitEnumConstantDeclaration(EnumConstantDeclaration node) {
    print('visitEnumConstantDeclaration $node ');
    super.visitEnumConstantDeclaration(node);
  }

  @override
  void visitEnumDeclaration(EnumDeclaration node) {
    print('visitEnumDeclaration $node ');
    super.visitEnumDeclaration(node);
  }

  @override
  void visitExportDirective(ExportDirective node) {
    print('visitExportDirective $node ');
    super.visitExportDirective(node);
  }

  @override
  void visitExpressionFunctionBody(ExpressionFunctionBody node) {
    print('visitExpressionFunctionBody $node ');
    super.visitExpressionFunctionBody(node);
  }

  @override
  void visitExpressionStatement(ExpressionStatement node) {
    print('visitExpressionStatement $node ');
    super.visitExpressionStatement(node);
  }

  @override
  void visitExtendsClause(ExtendsClause node) {
    print('visitExtendsClause $node ');
    super.visitExtendsClause(node);
  }

  @override
  void visitExtensionDeclaration(ExtensionDeclaration node) {
    print('visitExtensionDeclaration $node ');
    super.visitExtensionDeclaration(node);
  }

  @override
  void visitExtensionOverride(ExtensionOverride node) {
    print('visitExtensionOverride $node ');
    super.visitExtensionOverride(node);
  }

  @override
  void visitFieldDeclaration(FieldDeclaration node) {
    print('visitFieldDeclaration $node ');
    super.visitFieldDeclaration(node);
  }

  @override
  void visitFieldFormalParameter(FieldFormalParameter node) {
    print('visitFieldFormalParameter $node ');
    super.visitFieldFormalParameter(node);
  }

  @override
  void visitForEachPartsWithDeclaration(ForEachPartsWithDeclaration node) {
    print('visitForEachPartsWithDeclaration $node ');
    super.visitForEachPartsWithDeclaration(node);
  }

  @override
  void visitForEachPartsWithIdentifier(ForEachPartsWithIdentifier node) {
    print('visitForEachPartsWithIdentifier $node ');
    super.visitForEachPartsWithIdentifier(node);
  }

  @override
  void visitForElement(ForElement node) {
    print('visitForElement $node ');
    super.visitForElement(node);
  }

  @override
  void visitForPartsWithDeclarations(ForPartsWithDeclarations node) {
    print('visitForPartsWithDeclarations $node ');
    super.visitForPartsWithDeclarations(node);
  }

  @override
  void visitForPartsWithExpression(ForPartsWithExpression node) {
    print('visitForPartsWithExpression $node ');
    super.visitForPartsWithExpression(node);
  }

  @override
  void visitForStatement(ForStatement node) {
    print('visitForStatement $node ');
    super.visitForStatement(node);
  }

  @override
  void visitFormalParameterList(FormalParameterList node) {
    print('visitFormalParameterList $node ');
    super.visitFormalParameterList(node);
  }

  @override
  void visitFunctionDeclaration(FunctionDeclaration node) {
    print('visitFunctionDeclaration $node ');
    super.visitFunctionDeclaration(node);
  }

  @override
  void visitFunctionDeclarationStatement(FunctionDeclarationStatement node) {
    print('visitFunctionDeclarationStatement $node ');
    super.visitFunctionDeclarationStatement(node);
  }

  @override
  void visitFunctionExpression(FunctionExpression node) {
    print('visitFunctionExpression $node ');
    super.visitFunctionExpression(node);
  }

  @override
  void visitFunctionExpressionInvocation(FunctionExpressionInvocation node) {
    print('visitFunctionExpressionInvocation $node ');
    super.visitFunctionExpressionInvocation(node);
  }

  @override
  void visitFunctionReference(FunctionReference node) {
    print('visitFunctionReference $node ');
    super.visitFunctionReference(node);
  }

  @override
  void visitFunctionTypeAlias(FunctionTypeAlias node) {
    print('visitFunctionTypeAlias $node ');
    super.visitFunctionTypeAlias(node);
  }

  @override
  void visitFunctionTypedFormalParameter(FunctionTypedFormalParameter node) {
    print('visitFunctionTypedFormalParameter $node ');
    super.visitFunctionTypedFormalParameter(node);
  }

  @override
  void visitGenericFunctionType(GenericFunctionType node) {
    print('visitGenericFunctionType $node ');
    super.visitGenericFunctionType(node);
  }

  @override
  void visitGenericTypeAlias(GenericTypeAlias node) {
    print('visitGenericTypeAlias $node ');
    super.visitGenericTypeAlias(node);
  }

  @override
  void visitHideClause(HideClause node) {
    print('visitHideClause $node ');
    super.visitHideClause(node);
  }

  @override
  void visitHideCombinator(HideCombinator node) {
    print('visitHideCombinator $node ');
    super.visitHideCombinator(node);
  }

  @override
  void visitIfElement(IfElement node) {
    print('visitIfElement $node ');
    super.visitIfElement(node);
  }

  @override
  void visitIfStatement(IfStatement node) {
    print('visitIfStatement $node ');
    super.visitIfStatement(node);
  }

  @override
  void visitImplementsClause(ImplementsClause node) {
    print('visitImplementsClause $node ');
    super.visitImplementsClause(node);
  }

  @override
  void visitImplicitCallReference(ImplicitCallReference node) {
    print('visitImplicitCallReference $node ');
    super.visitImplicitCallReference(node);
  }

  @override
  void visitImportDirective(ImportDirective node) {
    print('visitImportDirective $node ');
    super.visitImportDirective(node);
  }

  @override
  void visitIndexExpression(IndexExpression node) {
    print('visitIndexExpression $node ');
    super.visitIndexExpression(node);
  }

  @override
  void visitInstanceCreationExpression(InstanceCreationExpression node) {
    print('visitInstanceCreationExpression $node ');
    super.visitInstanceCreationExpression(node);
  }

  @override
  void visitIntegerLiteral(IntegerLiteral node) {
    print('visitIntegerLiteral $node ');
    super.visitIntegerLiteral(node);
  }

  @override
  void visitInterpolationExpression(InterpolationExpression node) {
    print('visitInterpolationExpression $node ');
    super.visitInterpolationExpression(node);
  }

  @override
  void visitInterpolationString(InterpolationString node) {
    print('visitInterpolationString $node ');
    super.visitInterpolationString(node);
  }

  @override
  void visitIsExpression(IsExpression node) {
    print('visitIsExpression $node ');
    super.visitIsExpression(node);
  }

  @override
  void visitLabel(Label node) {
    print('visitLabel $node ');
    super.visitLabel(node);
  }

  @override
  void visitLabeledStatement(LabeledStatement node) {
    print('visitLabeledStatement $node ');
    super.visitLabeledStatement(node);
  }

  @override
  void visitLibraryAugmentationDirective(LibraryAugmentationDirective node) {
    print('visitLibraryAugmentationDirective $node ');
    super.visitLibraryAugmentationDirective(node);
  }

  @override
  void visitLibraryDirective(LibraryDirective node) {
    print('visitLibraryDirective $node ');
    super.visitLibraryDirective(node);
  }

  @override
  void visitLibraryIdentifier(LibraryIdentifier node) {
    print('visitLibraryIdentifier $node ');
    super.visitLibraryIdentifier(node);
  }

  @override
  void visitListLiteral(ListLiteral node) {
    print('visitListLiteral $node ');
    super.visitListLiteral(node);
  }

  @override
  void visitMapLiteralEntry(MapLiteralEntry node) {
    print('visitMapLiteralEntry $node ');
    super.visitMapLiteralEntry(node);
  }

  @override
  void visitMethodDeclaration(MethodDeclaration node) {
    print('visitMethodDeclaration $node ');
    super.visitMethodDeclaration(node);
  }

  @override
  void visitMethodInvocation(MethodInvocation node) {
    print('visitMethodInvocation $node ');
    super.visitMethodInvocation(node);
  }

  @override
  void visitMixinDeclaration(MixinDeclaration node) {
    print('visitMixinDeclaration $node ');
    super.visitMixinDeclaration(node);
  }

  @override
  void visitNamedExpression(NamedExpression node) {
    print('visitNamedExpression $node ');
    super.visitNamedExpression(node);
  }

  @override
  void visitNamedType(NamedType node) {
    print('visitNamedType $node ');
    super.visitNamedType(node);
  }

  @override
  void visitNativeClause(NativeClause node) {
    print('visitNativeClause $node ');
    super.visitNativeClause(node);
  }

  @override
  void visitNativeFunctionBody(NativeFunctionBody node) {
    print('visitNativeFunctionBody $node ');
    super.visitNativeFunctionBody(node);
  }

  @override
  void visitNullLiteral(NullLiteral node) {
    print('visitNullLiteral $node ');
    super.visitNullLiteral(node);
  }

  @override
  void visitOnClause(OnClause node) {
    print('visitOnClause $node ');
    super.visitOnClause(node);
  }

  @override
  void visitParenthesizedExpression(ParenthesizedExpression node) {
    print('visitParenthesizedExpression $node ');
    super.visitParenthesizedExpression(node);
  }

  @override
  void visitPartDirective(PartDirective node) {
    print('visitPartDirective $node ');
    super.visitPartDirective(node);
  }

  @override
  void visitPartOfDirective(PartOfDirective node) {
    print('visitPartOfDirective $node ');
    super.visitPartOfDirective(node);
  }

  @override
  void visitPostfixExpression(PostfixExpression node) {
    print('visitPostfixExpression $node ');
    super.visitPostfixExpression(node);
  }

  @override
  void visitPrefixExpression(PrefixExpression node) {
    print('visitPrefixExpression $node ');
    super.visitPrefixExpression(node);
  }

  @override
  void visitPrefixedIdentifier(PrefixedIdentifier node) {
    print('visitPrefixedIdentifier $node ');
    super.visitPrefixedIdentifier(node);
  }

  @override
  void visitPropertyAccess(PropertyAccess node) {
    print('visitPropertyAccess $node ');
    super.visitPropertyAccess(node);
  }

  @override
  void visitRedirectingConstructorInvocation(
      RedirectingConstructorInvocation node) {
    print('visitRedirectingConstructorInvocation $node ');
    super.visitRedirectingConstructorInvocation(node);
  }

  @override
  void visitRethrowExpression(RethrowExpression node) {
    print('visitRethrowExpression $node ');
    super.visitRethrowExpression(node);
  }

  @override
  void visitReturnStatement(ReturnStatement node) {
    print('visitReturnStatement $node ');
    super.visitReturnStatement(node);
  }

  @override
  void visitScriptTag(ScriptTag scriptTag) {
    print('visitScriptTag $scriptTag ');
    super.visitScriptTag(scriptTag);
  }

  @override
  void visitSetOrMapLiteral(SetOrMapLiteral node) {
    print('visitSetOrMapLiteral $node ');
    super.visitSetOrMapLiteral(node);
  }

  @override
  void visitShowClause(ShowClause node) {
    print('visitShowClause $node ');
    super.visitShowClause(node);
  }

  @override
  void visitShowCombinator(ShowCombinator node) {
    print('visitShowCombinator $node ');
    super.visitShowCombinator(node);
  }

  @override
  void visitShowHideElement(ShowHideElement node) {
    print('visitShowHideElement $node ');
    super.visitShowHideElement(node);
  }

  @override
  void visitSimpleFormalParameter(SimpleFormalParameter node) {
    print('visitSimpleFormalParameter $node ');
    super.visitSimpleFormalParameter(node);
  }

  @override
  void visitSimpleIdentifier(SimpleIdentifier node) {
    print('visitSimpleIdentifier $node ');

    node.visitChildren(TestVisitor());
    super.visitSimpleIdentifier(node);
  }

  @override
  void visitSimpleStringLiteral(SimpleStringLiteral node) {
    print('visitSimpleStringLiteral $node ');
    super.visitSimpleStringLiteral(node);
  }

  @override
  void visitSpreadElement(SpreadElement node) {
    print('visitSpreadElement $node ');
    super.visitSpreadElement(node);
  }

  @override
  void visitStringInterpolation(StringInterpolation node) {
    print('visitStringInterpolation $node ');
    super.visitStringInterpolation(node);
  }

  @override
  void visitSuperConstructorInvocation(SuperConstructorInvocation node) {
    print('visitSuperConstructorInvocation $node ');
    super.visitSuperConstructorInvocation(node);
  }

  @override
  void visitSuperExpression(SuperExpression node) {
    print('visitSuperExpression $node ');
    super.visitSuperExpression(node);
  }

  @override
  void visitSuperFormalParameter(SuperFormalParameter node) {
    print('visitSuperFormalParameter $node ');
    super.visitSuperFormalParameter(node);
  }

  @override
  void visitSwitchCase(SwitchCase node) {
    print('visitSwitchCase $node ');
    super.visitSwitchCase(node);
  }

  @override
  void visitSwitchDefault(SwitchDefault node) {
    print('visitSwitchDefault $node ');
    super.visitSwitchDefault(node);
  }

  @override
  void visitSwitchStatement(SwitchStatement node) {
    print('visitSwitchStatement $node ');
    super.visitSwitchStatement(node);
  }

  @override
  void visitSymbolLiteral(SymbolLiteral node) {
    print('visitSymbolLiteral $node ');
    super.visitSymbolLiteral(node);
  }

  @override
  void visitThisExpression(ThisExpression node) {
    print('visitThisExpression $node ');
    super.visitThisExpression(node);
  }

  @override
  void visitThrowExpression(ThrowExpression node) {
    print('visitThrowExpression $node ');
    super.visitThrowExpression(node);
  }

  @override
  void visitTopLevelVariableDeclaration(TopLevelVariableDeclaration node) {
    print('visitTopLevelVariableDeclaration $node ');
    super.visitTopLevelVariableDeclaration(node);
  }

  @override
  void visitTryStatement(TryStatement node) {
    print('visitTryStatement $node ');
    super.visitTryStatement(node);
  }

  @override
  void visitTypeArgumentList(TypeArgumentList node) {
    print('visitTypeArgumentList $node ');
    super.visitTypeArgumentList(node);
  }

  @override
  void visitTypeLiteral(TypeLiteral node) {
    print('visitTypeLiteral $node ');
    super.visitTypeLiteral(node);
  }

  @override
  void visitTypeParameter(TypeParameter node) {
    print('visitTypeParameter $node ');
    super.visitTypeParameter(node);
  }

  @override
  void visitTypeParameterList(TypeParameterList node) {
    print('visitTypeParameterList $node ');
    super.visitTypeParameterList(node);
  }

  @override
  void visitVariableDeclaration(VariableDeclaration node) {
    print('visitVariableDeclaration $node ');
    super.visitVariableDeclaration(node);
  }

  @override
  void visitVariableDeclarationList(VariableDeclarationList node) {
    print('visitVariableDeclarationList $node ');
    super.visitVariableDeclarationList(node);
  }

  @override
  void visitVariableDeclarationStatement(VariableDeclarationStatement node) {
    print('visitVariableDeclarationStatement $node ');
    super.visitVariableDeclarationStatement(node);
  }

  @override
  void visitWhileStatement(WhileStatement node) {
    print('visitWhileStatement $node ');
    super.visitWhileStatement(node);
  }

  @override
  void visitWithClause(WithClause node) {
    print('visitWithClause $node ');
    super.visitWithClause(node);
  }

  @override
  void visitYieldStatement(YieldStatement node) {
    print('visitYieldStatement $node ');
    super.visitYieldStatement(node);
  }
}
