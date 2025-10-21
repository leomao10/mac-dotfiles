# For Java
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
export JAVA_17_HOME=$(/usr/libexec/java_home -v17)
export JAVA_19_HOME=$(/usr/libexec/java_home -v19)

alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'
alias java17='export JAVA_HOME=$JAVA_17_HOME'
alias java19='export JAVA_HOME=$JAVA_19_HOME'

export MAVEN_OPTS="-Xmx4096m"

# # default to Java 11
. ~/.asdf/plugins/java/set-java-home.zsh

